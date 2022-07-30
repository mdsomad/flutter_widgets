import 'package:flutter/material.dart';

class Expansion_Tile extends StatelessWidget {
  const Expansion_Tile({Key? key}) : super(key: key);

  final List productInfo = const [
    {
      "product_image":
          "https://cdn.pixabay.com/photo/2020/04/19/01/15/perfume-5061479_1280.jpg",
      "product_title": "Product 1",
      "product_rating": "5",
      "seller_name": "BL Kumawat",
      "seller_image":
          "https://cdn.iconscout.com/icon/free/png-256/astonishes-boy-1129046.png",
      "product_details":
          "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is"
    },
    {
      "product_image":
          "https://upload.wikimedia.org/wikipedia/commons/6/65/Product_Photography.jpg",
      "product_title": "Product 2",
      "product_rating": "5",
      "seller_name": "Rohit Roy",
      "seller_image":
          "https://cdn.iconscout.com/icon/free/png-256/astonishes-boy-1129046.png",
      "product_details":
          "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is"
    },
    {
      "product_image":
          "https://pixahive.com/wp-content/uploads/2020/10/Product-Photography-163484-pixahive.jpg",
      "product_title": "Product 3",
      "product_rating": "5",
      "seller_name": "Demo Ji",
      "seller_image":
          "https://cdn.iconscout.com/icon/free/png-256/astonishes-boy-1129046.png",
      "product_details":
          "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is"
    },
    {
      "product_image":
          "https://cdn.pixabay.com/photo/2021/02/23/09/42/coca-cola-6042908_1280.jpg",
      "product_title": "Product 4",
      "product_rating": "5",
      "seller_name": "XYZ4",
      "seller_image":
          "https://cdn.iconscout.com/icon/free/png-256/astonishes-boy-1129046.png",
      "product_details":
          "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is"
    }
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Collapsivle List using"),
      ),
      body: ListView.builder(
        itemCount: productInfo.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              children: [
                Image.network(
                  productInfo[index]["product_image"],      // No Images Show
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),


                ExpansionTile(
                  title: Text(productInfo[index]["product_title"]),
                  subtitle: Text(productInfo[index]["product_rating"]),

                  children: [
                    ListTile(
                      leading: Image.network(
                          "${productInfo[index]['seller_image']}"),
                      title: Text("${productInfo[index]['seller_name']}"),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "${productInfo[index]['product_details']}",
                          textAlign: TextAlign.justify,
                        )),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
