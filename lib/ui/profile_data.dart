import 'package:flutter/material.dart';


class ProfileData extends StatelessWidget {

  get _profileImage => Container(
    height: 200.0,
    width: 150.0,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
        image: DecorationImage(fit: BoxFit.cover,
            image: NetworkImage('https://picsum.photos/id/237/300/500'))
    ),
  );

  get _profileInfo => Expanded(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          _bio,
          SizedBox(height: 20,),
          _location,
          _emailID
        ],
      ),
    ),
  );

  get _bio => Container(
    padding: const EdgeInsets.all(8.0),
    child: Text('Creative Snuggler at Kennel Pvt Ltd',
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),
    ),
  );

  get _location => Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: <Widget>[
        Icon(Icons.location_on, size: 16, color: Colors.grey[400],),
        SizedBox(width: 10,),
        Text('Mudhouse, India',
          style: TextStyle(color: Colors.grey[400], fontSize: 16),)
      ],
    ),
  );

  get _emailID => Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: <Widget>[
        Icon(Icons.email, size: 16, color: Colors.grey[400],),
        SizedBox(width: 10,),
        Text('info@snuggler.com',
          style: TextStyle(color: Colors.grey[400], fontSize: 16),)
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Row(
        children: <Widget>[
          _profileImage,
          _profileInfo,
        ],
      ),
    );
  }
}

