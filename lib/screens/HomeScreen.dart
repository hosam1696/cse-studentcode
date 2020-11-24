import 'package:flutter/material.dart';
import 'package:studentcode/models/ClassYear.dart';
import 'package:studentcode/screens/SearchScreen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ClassYear> classes = [
    ClassYear(id: 1, name: 'الفرقة الثالثة (حاسبات)', emailSlug: '@eng.zu.edu.eg'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Container(
          constraints: BoxConstraints(
            maxWidth: 350,
            minWidth: width * 0.5,
            maxHeight: 600,
            minHeight: height * 0.5,
          ),
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                transform: Matrix4.translationValues(0, 15, 0),
                constraints: BoxConstraints(
                  maxWidth: width,
                  minWidth: width,
                ),
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor, borderRadius: BorderRadius.only(topRight: Radius.circular(35), topLeft: Radius.circular(35))),
                child: Container(
                  transform: Matrix4.translationValues(0, -10, 0),
                  child: Text(
                    'اختر دفعتك',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              Container(
                height: 300,
                transform: Matrix4.translationValues(0, -15, 0),
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    // boxShadow: [BoxShadow(color: Colors.grey[200], spreadRadius: 8, blurRadius: 8)],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(35))),
                child: ListView.builder(
                    itemCount: classes.length,
                    itemBuilder: (BuildContext context, int i) {
                      return YearWidget(
                        classYear: classes[i],
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class YearWidget extends StatelessWidget {
  final ClassYear classYear;
  const YearWidget({Key key, @required this.classYear}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        textTheme: ButtonTextTheme.accent,
        padding: EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Directionality(
                  textDirection: TextDirection.rtl,
                  child: SearchPage(
                    classYear: classYear,
                  ))));
        },
        highlightColor: Theme.of(context).accentColor.withAlpha(80),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.cast_for_education,
              color: Colors.grey,
            ),
            SizedBox(
              width: 12,
            ),
            Flexible(
              child: Text(
                classYear.name,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            )
          ],
        ));
  }
}
