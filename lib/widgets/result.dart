import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int count;
  final int total;
  final Function onClearState;

  Result({Key key, this.count, this.total, this.onClearState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String msg = '';
    Widget img;

    if (0 <= count && count <= 2) {
      msg = 'Yomon urinish';
      img = Image.asset(
        'assets/images/bad.jpg',
      );
    } else if ((1 <= count && count <= 4)) {
      msg = 'Marraga oz qoldi!!!';
      img = Image.asset('assets/images/norm.jpg');
    } else {
      msg = 'Tabriklaymiz, siz yaxshi natija qayd ettingiz';
      img = Image.asset('assets/images/good.jpg');
    }

    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 15,
            spreadRadius: 0,
            offset: Offset(2, 5),
          ),
        ],
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
          colors: <Color>[
            Color(0xFF5337ff),
            Color(0xFF8131ff),
            Color(0xFFbd27ff),
          ],
        ),
      ),
      child: Column(
        children: [
          Container(
            width: 120,
            height: 120,
            child: FittedBox(
              fit: BoxFit.contain,
              child: img,
            ),
          ),
          Container(
            child: Text(
              msg,
              textAlign: TextAlign.center,
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          Text(
            'To\'g\'ri javob berdingiz $total tadan $count taga',
            style: TextStyle(fontSize: 20),
          ),
          Divider(
            color: Colors.white,
          ),
          FlatButton(
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30)),
            color: Colors.greenAccent,
            child: Text(
              'Yana urinib ko\'ring',
              style: TextStyle(
                fontSize: 26,
              ),
            ),
            onPressed: onClearState,
          ),
        ],
      ),
    );
  }
}
