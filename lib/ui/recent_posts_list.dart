import 'package:flutter/material.dart';

class RecentPostsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SectionHeader("Recent Posts"),
          Container(
            height: 100,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => ListItem()),
          )
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      height: 20.0,
      width: 150.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
          image: DecorationImage(fit: BoxFit.cover,
              image: NetworkImage('https://picsum.photos/400'))
      ),
    );
  }
}


class SectionHeader extends StatelessWidget {

  final String value;
  SectionHeader(this.value);

  @override
  Widget build(BuildContext context) {
    return Text(value,
      style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
