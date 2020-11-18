import 'package:We_Recycle/model/ProductModel.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Product extends StatelessWidget {
  List<ProductModel> listProduct = new List<ProductModel>();

  @override
  Widget build(BuildContext context) {
    listProduct = getList();

    return ListView.builder(
        itemCount: listProduct.length,
        itemBuilder: (context, int i) {
          return InkWell(
              splashColor: Colors.grey[200],
              onTap: () {
                print('clicked = ' + listProduct[i].title);
              },
              child: Center(
                  child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 10,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(children: <Widget>[
                                Image.asset(listProduct[i].image,
                                    width: 300,
                                    fit: BoxFit.cover),
                                Text(listProduct[i].title,
                                    style: TextStyle(
                                        fontSize: 20, fontFamily: 'Nunito')),
                                Text(listProduct[i].harga,
                                    style: TextStyle(
                                        fontSize: 20, fontFamily: 'Nunito')),
                              ]))))));
        });
  }
}
