import 'package:http/http.dart' as http;
import 'package:news_app_api/models/news_model.dart';

class RemoteNewsService {
  static var client = http.Client();
  static Future <List<NewsArticle> ? > fetchNewsArticle()async{
    var response = await client.get(Uri.parse("https://newsapi.org/v2/everything?q=tesla&from=2024-04-05&sortBy=publishedAt&apiKey=b951c0a587d7458d924dbbe3a4a90de4"));
    if (response.statusCode ==200){
      return newsArticleFromJson(response.body);

    }else{
      return null;
    }
  }
}