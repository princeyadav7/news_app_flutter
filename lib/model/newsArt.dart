class NewsArt {
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsUrl;
  String newsCnt;

  NewsArt(
      {required this.imgUrl,
        required this.newsDes,
        required this.newsCnt,
        required this.newsHead,
        required this.newsUrl});

  static NewsArt fromAPItoApp(Map<String,dynamic>article) {
    return NewsArt(
        imgUrl: article ["urlToImage"]??"https://images.unsplash.com/photo-1476242906366-d8eb64c2f661?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        newsDes: article["description"]??"--",
        newsCnt: article["content"]??"--",
        newsHead: article["title"]??"--",
        newsUrl: article["url"]?? "https://news.google.com/home?hl=en-IN&gl=IN&ceid=IN:en");
  }
}
