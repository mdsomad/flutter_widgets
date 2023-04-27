import 'package:flutter/material.dart';









class AnimatedListViewBuilderWidget extends StatefulWidget {
 const AnimatedListViewBuilderWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedListViewBuilderWidget> createState() => _AnimatedListViewBuilderWidgetState();
}

class _AnimatedListViewBuilderWidgetState extends State<AnimatedListViewBuilderWidget> {


  //TODO Will used to access the Animated list
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

  //TODO This holds the items
  List<int> _items = [];

  //TODO This holds the item count
  int counter = 0;






  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){                              //* sizeIt
            listKey.currentState!.removeItem(0, (_, animation) => slideIt(context, 0, animation),
                duration: const Duration(milliseconds:500));

               _items.removeAt(0);  //* <-- This Remove Items

          }, icon:  Icon(Icons.remove_circle_outline))
        ],
      ),




      //* FloatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          listKey.currentState!.insertItem(0, duration: const Duration(milliseconds: 500));
          _items = []..add(counter++)
            ..addAll(_items);
        },
        child: Icon(Icons.add),
      ),






      body: SafeArea(
        child: AnimatedList(
          key: listKey,
          initialItemCount: _items.length,
          itemBuilder: (context, index, animation){
            return InkWell(
                onTap: (){
                  listKey.currentState!.removeItem(0, (_, animation) => sizeIt(context, 0, animation),
                      duration: const Duration(milliseconds:500));

                      _items.removeAt(index);  //* <-- This Remove Items

                },
                child: slideIt(context, index, animation));
          },
        ),
      ),
    );
  }






  //TODO slide transition animation
  Widget slideIt(BuildContext context, int index, animation) {
    int item = _items[index];
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(-1, 0),  //* Left
        // begin: const Offset(1, 1),      //* Right
        end: Offset(0, 0),
      ).animate(animation),
      child: SizedBox( // Actual widget to display
        height: 128.0,
        child: Card(
          color: Colors.primaries[item % Colors.primaries.length],
          child: Center(
            child: Text('Item $item', style: Theme.of(context).textTheme.headline4),
          ),
        ),
      ),
    );
  }






  //TODO sizeIt transition animation
  Widget sizeIt(BuildContext context, int index, animation) {
    int item = _items[index];
    return SizeTransition(
      axis: Axis.vertical,
      sizeFactor: animation,
      child: SizedBox(
        height: 100.0,
        child: Card(
          color: Colors.primaries[item % Colors.primaries.length],
          child: Center(
            child: Text('Item $item', style: Theme.of(context).textTheme.headline4),
          ),
        ),
      ),
    );
  }








}



