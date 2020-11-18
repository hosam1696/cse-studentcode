import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchCtrl = TextEditingController();
    final Key searchKey = Key('searchKey');
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 18),
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(80),
                  boxShadow: [BoxShadow(color: Colors.grey[300], spreadRadius: 8, blurRadius: 8)]),
              child: TextField(
                controller: searchCtrl,
                key: searchKey,
                decoration: InputDecoration(hintText: 'ابحث بالاسم أو بالكود', border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Stack(
              overflow: Overflow.visible,
              children: [
                Positioned(
                  // top: 100,
                  child: Container(
                    // transform: Matrix4.translationValues(0, -30, 0),
                    height: 300,
                    constraints: BoxConstraints(
                      maxWidth: width * 0.75,
                      minWidth: width * 0.75,
                      maxHeight: 300,
                      minHeight: height * 0.3,
                    ),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        children: [
                          SizedBox(height: 100),
                          Row(
                            children: [
                              Icon(
                                Icons.edit,
                                color: Theme.of(context).primaryColor,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Flexible(child: Text('حسام النبوى أحمد الزمزمى'))
                            ],
                          ),
                          Divider(
                            height: 16,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.drag_indicator,
                                color: Theme.of(context).primaryColor,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                  child: Text(
                                '35436567465',
                              ))
                            ],
                          ),
                          Divider(
                            height: 16,
                          ),
                          Row(
                            children: [
                              Icon(Icons.email, color: Theme.of(context).primaryColor),
                              SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                  child: Text(
                                '35436567465@eng.zu.edu.eg',
                                textDirection: TextDirection.ltr,
                              ))
                            ],
                          ),
                          Divider(
                            height: 30,
                          ),
                          FlatButton(
                              onPressed: () {},
                              color: Theme.of(context).primaryColor,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
                              child: Text(
                                'نسخ الكل',
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: -55,
                  right: width * 0.25 - 15,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    minRadius: 60,
                    child: Icon(
                      Icons.person,
                      size: 80,
                      color: Colors.grey[400],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Icon(
          Icons.find_replace,
          color: Colors.white,
        ),
      ),
    );
  }
}
