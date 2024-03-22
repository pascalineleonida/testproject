import 'package:flutter/material.dart';
class secondpage extends StatefulWidget {
  String imageDeArticle;
  String titreDeArticle;
  String prixDeArticle;
  secondpage({super.key,required this.imageDeArticle,required this.titreDeArticle,required this.prixDeArticle});

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 110,
            width: 110,
            color: Colors.green,
            child: Column(
              children: [
                Image(image: AssetImage(widget.imageDeArticle)),
              ],
            ),
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
