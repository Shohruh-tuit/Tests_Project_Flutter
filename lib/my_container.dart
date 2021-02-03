import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: Image.network(
                        'https://static.toiimg.com/photo/72975551.cms')
                    .image,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(30)),
        ),
      ),
    );
  }
}
