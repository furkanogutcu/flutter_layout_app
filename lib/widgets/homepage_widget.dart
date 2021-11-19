import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.appBarTitle}) : super(key: key);
  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return buildHomePage(context, appBarTitle);
  }
}

///This function returns a Scaffold widget containing the homepage layout.
Widget buildHomePage(BuildContext context, String appBarTitle) {
  return Scaffold(
    appBar: AppBar(
      title: Text(appBarTitle),
    ),
    body: ListView(
      //You can change the homepage design within this array.
      children: [
        imageSection(),
        titleSection(),
        buttonSection(),
        textSection()
      ],
    ),
  );
}

///This function creates the image section on the homepage.
Widget imageSection() {
  return Image.asset(
    'assets/images/lake.jpg',
    width: 600,
    height: 240,
    fit: BoxFit.cover,
  );
}

///This function creates the title section on the homepage.
Widget titleSection() {
  return Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  "Oeschinen Lake Campground",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Text("Kandersteg, Switzerland",
                  style: TextStyle(color: Colors.grey[500]))
            ],
          ),
        ),
        const Icon(
          Icons.star,
          color: Colors.red,
        ),
        const Text('94'),
      ],
    ),
  );
}

///This function creates the button section on the homepage.
Widget buttonSection() {
  var buttonColor = Colors.blue;
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildButtonColumn(buttonColor, Icons.call, "CALL"),
      _buildButtonColumn(buttonColor, Icons.near_me, "ROUTE"),
      _buildButtonColumn(buttonColor, Icons.share, "SHARE")
    ],
  );
}

///This function creates the text section on the homepage.
Widget textSection() {
  return const Padding(
    padding: EdgeInsets.all(32),
    child: Text(
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
      'Alps. Situated 1,578 meters above sea level, it is one of the '
      'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
      'half-hour walk through pastures and pine forest, leads you to the '
      'lake, which warms to 20 degrees Celsius in the summer. Activities '
      'enjoyed here include rowing, and riding the summer toboggan run.',
      softWrap: true,
    ),
  );
}

///This function creates a customized Icon - Text column with the arguments it takes.
Widget _buildButtonColumn(Color color, IconData icon, String iconText) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        icon,
        color: color,
      ),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(iconText,
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, color: color)),
      )
    ],
  );
}
