// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

// First Add package locction --> pubspec.yaml / dependencies -->  ( responsive_builder: ^0.4.2 )

// package link this = https://pub.dev/packages/responsive_builder/install



class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List products = [
    {
      "imgUrl":
          "https://cdn.pixabay.com/photo/2020/04/19/01/15/perfume-5061479_1280.jpg",
      "name": "Md Somad",
      "price": 199
    },
    {
      "imgUrl":
          "https://upload.wikimedia.org/wikipedia/commons/6/65/Product_Photography.jpg",
      "name": "Hamja",
      "price": 499
    },
    {
      "imgUrl":
          "https://images.pexels.com/photos/7014918/pexels-photo-7014918.jpeg?cs=srgb&dl=pexels-george-milton-7014918.jpg&fm=jpg",
      "name": "Md Somad",
      "price": 899
    },
    {
      "imgUrl":
          "https://images.pexels.com/photos/7014925/pexels-photo-7014925.jpeg?cs=srgb&dl=pexels-george-milton-7014925.jpg&fm=jpg",
      "name": "Amir",
      "price": 199
    },
    {
      "imgUrl":
          "https://cdn.pixabay.com/photo/2021/02/23/09/42/coca-cola-6042908_1280.jpg",
      "name": "Somad",
      "price": 299
    },
    {
      "imgUrl":
          "https://images.pexels.com/photos/4405384/pexels-photo-4405384.jpeg?cs=srgb&dl=pexels-%D0%B2%D0%B0%D1%81%D0%B8%D0%BB%D1%8C-%D0%B2%D0%BE%D0%B2%D0%BA-4405384.jpg&fm=jpg",
      "name": "Yasin",
      "price": 199,
      "Color": Colors.red
    },
    {
      "imgUrl":
          "https://upload.wikimedia.org/wikipedia/commons/6/65/Product_Photography.jpg",
      "name": "Md Somad",
      "price": 599
    },
    {
      "imgUrl":
          "https://images.pexels.com/photos/5077393/pexels-photo-5077393.jpeg?cs=srgb&dl=pexels-cottonbro-5077393.jpg&fm=jpg",
      "name": "Akif",
      "price": 1099,
      "Color": Colors.green
    },
    {
      "imgUrl":
          "https://upload.wikimedia.org/wikipedia/commons/6/65/Product_Photography.jpg",
      "name": "Abul",
      "price": 1999
    },
  ];

  Future<List> getproducts() async {
    await Future.delayed(Duration(seconds: 3));
    return Future.value(products);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text("Responsive Web UI Using"),
          centerTitle: true,
        ),
        body: FutureBuilder<List>(
            future: getproducts(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(child: Text("Loging Your products.."));
              } else {

                return ResponsiveBuilder(
                  builder: (context, sizingInformation) {
                    // Check the sizing information here and return your UI
                    if (sizingInformation.deviceScreenType ==
                        DeviceScreenType.desktop) {
                      return buildForDestop(snapshot.data, 4);
                    }

                    if (sizingInformation.deviceScreenType ==
                        DeviceScreenType.tablet) {
                      return buildForDestop(snapshot.data, 2);
                    }

                    if (sizingInformation.deviceScreenType ==
                        DeviceScreenType.watch) {
                      return Container(color: Colors.yellow);
                    }

                    return buildForDestop(snapshot.data, 1);
                  },
                );
              }
            }));
  }



  Widget buildForDestop(dynamic data, int count) {          // <-- Wigget create
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: count, childAspectRatio: 3 / 4),
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Image.network(data[index]['imgUrl'])),
                Text('${data[index]["name"]}'),
                Text('${data[index]['price']}')
              ],
            ),
          );
        });
  }
}
