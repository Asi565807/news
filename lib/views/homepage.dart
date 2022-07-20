import 'package:flutter/material.dart';
import 'package:news/helper/widgets.dart';
import '../helper/news.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //String apiKey = "386ebe07628d48f89cfdd704b95d2b01";
  late bool _loading;
  var newslist;

  void getNews() async {
    News news = News();
    await news.getNews();
    newslist = news.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  void initState() {
    _loading = true;
    // TODO: implement initState
    super.initState();
    getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Flutter",
              style:
              TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
            ),
            Text(
              "News",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Container(
            child: Category(),
          ),
          SizedBox(height: 10,),
          _loading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Expanded(
                child: SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsets.only(top: 16),
                      child: ListView.builder(
                          itemCount: newslist.length,
                          shrinkWrap: true,
                          physics: ClampingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return NewsTile(
                              imgUrl: newslist[index].urlToImage,
                              title: newslist[index].title,
                              desc: newslist[index].description,
                              content: newslist[index].content,
                              posturl: newslist[index].articleUrl,
                            );
                          }),
                    ),
                  ),
              ),
        ],
      ),
    );
  }
}


class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            child: GestureDetector(
              onTap: (){
                setState(() {

                });
              },
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.network(
                      "https://images.unsplash.com/photo-1460925895917-afdab827c52f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1715&q=80",
                      height: 60,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      width: 120,
                      height: 60,

                      child: Text(
                        "BUSINESS",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18),
                      )),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.network(
                    "https://images.unsplash.com/photo-1563341591-a4ef278eb34b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80",
                    height: 60,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                    alignment: Alignment.center,
                    width: 120,
                    height: 60,

                    child: Text(
                      "ENTERYAINMENT",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 15),
                    )),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.network(
                    "https://images.unsplash.com/photo-1493612276216-ee3925520721?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1664&q=80",
                    height: 60,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                    alignment: Alignment.center,
                    width: 120,
                    height: 60,

                    child: Text(
                      "GENERAL",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 18),
                    )),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.network(
                    "https://images.unsplash.com/photo-1532938911079-1b06ac7ceec7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80",
                    height: 60,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                    alignment: Alignment.center,
                    width: 120,
                    height: 60,

                    child: Text(
                      "HEALTH",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 18),
                    )),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.network(
                    "https://images.unsplash.com/photo-1554475900-0a0350e3fc7b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=717&q=80",
                    height: 60,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                    alignment: Alignment.center,
                    width: 120,
                    height: 60,

                    child: Text(
                      "SCIENCE",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 18),
                    )),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.network(
                    "https://images.unsplash.com/photo-1592592878585-abcaaaaf7cd1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1112&q=80",
                    height: 60,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                    alignment: Alignment.center,
                    width: 120,
                    height: 60,

                    child: Text(
                      "SPORTS",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 18),
                    )),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
