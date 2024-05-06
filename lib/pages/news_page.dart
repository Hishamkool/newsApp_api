import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NewsDetailPage extends StatefulWidget {
  final String title;
  final String description;
  final String publishedAt;
  final String imageUrl;
  final String author;
  final String content;
  const NewsDetailPage(
      {super.key,
      required this.title,
      required this.description,
      required this.publishedAt,
      required this.imageUrl,
      required this.author,
      required this.content});

  @override
  State<NewsDetailPage> createState() => _NewsDetailPageState();
}

class _NewsDetailPageState extends State<NewsDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            iconTheme: IconThemeData(color: Colors.grey),
            title: Text(
              widget.title,
              maxLines: 1,
              overflow: TextOverflow.fade,
              style: TextStyle(
                fontSize: 20,
                
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            expandedHeight: 400,
            flexibleSpace: Stack(
              children: [
                FlexibleSpaceBar(
                  background: ShaderMask(
                    shaderCallback: ((bounds) => const LinearGradient(
                            colors: [Colors.black38, Colors.black],
                            begin: Alignment.center,
                            end: Alignment.bottomCenter)
                        .createShader(bounds)),
                    blendMode: BlendMode.darken,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(widget.imageUrl),
                              fit: BoxFit.cover)),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
