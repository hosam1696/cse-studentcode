import 'package:flutter/material.dart';
import 'package:studentcode/screens/SearchScreen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              Text(
                'اختر دفعتك',
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                // padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20))),
                child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int i) {
                      return FlatButton.icon(
                          padding: EdgeInsets.all(16),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) => Directionality(textDirection: TextDirection.rtl, child: SearchPage())));
                          },
                          highlightColor: Theme.of(context).accentColor.withAlpha(80),
                          icon: Icon(
                            Icons.cast_for_education,
                            color: Colors.grey,
                          ),
                          label: Text(
                            'الفرقة الثالثة (حاسبات)',
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.subtitle1,
                          ));
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
