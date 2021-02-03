import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = false;
  int _favoriteCount = 135;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: IconButton(
            icon: (_isFavorited
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_border)),
            onPressed: _toggleFavorite,
            color: Colors.red[500],
          ),
        ),
        SizedBox(
            width: 40,
            child: Container(
              child: Text('$_favoriteCount'),
            ))
      ],
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
        _favoriteCount -= 1;
      } else {
        _isFavorited = true;
        _favoriteCount += 1;
      }
    });
  }
}

class PersonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Japane old school'),
      ),
      body: Container(
        child: _buildMainColumn(),
      ),
    );
  }

  Widget _buildMainColumn() => ListView(
        children: [
          _buildTopImage(),
          Center(
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Container(
                    child: _buildRating(),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(5),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: _buildAction(),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: _buildDesc(),
                  )
                ],
              ),
            ),
          )
        ],
      );

  Widget _buildTopImage() => Container(
        child: Card(
          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
          elevation: 5,
          child: Container(
            width: 100,
            height: 500,
            child: Image.asset(
              'assets/images/images1.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      );

  Widget _buildRating() => ListTile(
        title: Text(
          'Zilong',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
        ),
        subtitle: Text('Japane, old school'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [FavoriteWidget()],
        ),
      );

  Widget _buildAction() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buidButton('Block', Icons.star, Colors.black),
          _buidButton(
              'Height 188 cm', Icons.radio_button_checked, Colors.black),
          _buidButton('Year 18', Icons.school, Colors.black),
        ],
      );

  Widget _buidButton(String label, IconData icon, Color color) => Column(
        children: [
          Icon(
            icon,
            color: Colors.black,
          ),
          Container(
            child: Text(
              label,
              style: TextStyle(fontWeight: FontWeight.w400, color: color),
            ),
          )
        ],
      );

  Widget _buildDesc() => Text(
        'I\'ve got my mom\'s old phone, but I can\'t afford a pricey wireless plan'
        'so I got a free phone number from TextNow',
        softWrap: true,
        style: TextStyle(fontSize: 16),
      );
}
