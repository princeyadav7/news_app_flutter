import 'package:flutter/material.dart';
import 'package:news_shorts/view/detail_view.dart';

class NewsContainer extends StatelessWidget {
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsUrl;
  String newsCnt;

  NewsContainer(
      {super.key,
      required this.imgUrl,
      required this.newsDes,
      required this.newsCnt,
      required this.newsHead,
      required this.newsUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top:30),
            child: Image.network(
                height: 250,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
                imgUrl),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  newsHead,
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(height: 5),
                Text(
                  newsDes,
                  style: TextStyle(fontSize: 17, color: Colors.black38),
                ),
                Text(
                  newsCnt.length > 700
                      ? newsCnt.substring(0, 700)
                      : "${newsCnt.toString().substring(0, newsCnt.length - 15)}...",
                  style: TextStyle(fontSize: 22),
                ),
              ],
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailViewScreen(newsUrl: newsUrl),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white54,
                  ),
                  child: Text(
                    "Read More",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
