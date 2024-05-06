import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewsCard extends StatelessWidget {
  final String title;
  final String description;
  final String publishedAt;
  final String author;
  final String imageUrl;

  const NewsCard(
      {super.key,
      required this.title,
      required this.description,
      required this.publishedAt,
      required this.author,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
        width: double.infinity,
        height: 320,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white54),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(imageUrl), fit: BoxFit.cover)),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 5),
              child: Column(
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 20),
                  ),
                  Text(
                    description,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.person_rounded,
                        color: Colors.black26,
                      ),
                      SizedBox(
                        width: 120,
                        child: Text(
                          author,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.calendar_month_outlined,
                        color: Colors.black26,
                      ),
                      Text(
                        publishedAt,
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
