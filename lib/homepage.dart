import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  String imageDeArticle;
  String titreDeArticle;
  String prixDeArticle;

   homepage({super.key,required this.imageDeArticle,required this.titreDeArticle,required this.prixDeArticle
  });

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 100,
            width: 100,
            color: Colors.white,
            child: Image.asset(widget.imageDeArticle),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.titreDeArticle),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.prixDeArticle),
            Icon(Icons.favorite_border),
          ],
        ),
      ],
    );
  }
}
