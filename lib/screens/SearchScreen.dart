import 'package:flutter/material.dart';
import 'package:studentcode/models/ClassYear.dart';
import 'package:studentcode/models/Student.dart';

class SearchPage extends StatefulWidget {
  final ClassYear classYear;
  const SearchPage({Key key, @required this.classYear}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController searchCtrl = TextEditingController();
  final Key searchKey = Key('searchKey');
  List<Student> students = [
    Student(name: 'حسام النبوى أحمد الزمزمى', code: '3456467466'),
    Student(name: 'الام محمد عبد الغنى', code: '23542345'),
    Student(name: 'محمد عابد ظاخر', code: '34533446'),
    Student(name: 'طاهر الدماصى ايهاب عبد الله', code: '3456467466'),
    Student(name: 'بهاء سلطان عبد السيد', code: '3456467466'),
    Student(name: 'شعبان رمضان عبد السيد', code: '3456467466'),
    Student(name: 'احم مجدى عبد اللطيف عطية', code: '3424234')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SearchWidget(searchCtrl: searchCtrl, searchKey: searchKey),
            SizedBox(
              height: 80,
            ),
            // StudentInfoWidget()
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

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key key,
    @required this.searchCtrl,
    @required this.searchKey,
  }) : super(key: key);

  final TextEditingController searchCtrl;
  final Key searchKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 18),
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(80), boxShadow: [BoxShadow(color: Colors.grey[200], spreadRadius: 8, blurRadius: 8)]),
      child: TextField(
        controller: searchCtrl,
        key: searchKey,
        decoration: InputDecoration(hintText: 'ابحث بالاسم أو بالكود', border: InputBorder.none),
      ),
    );
  }
}

class StudentInfoWidget extends StatelessWidget {
  const StudentInfoWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Stack(
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
    );
  }
}
