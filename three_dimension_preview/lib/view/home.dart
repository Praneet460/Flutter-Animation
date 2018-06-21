import 'package:flutter/material.dart';
import 'package:three_dimension_preview/view/content.dart';
class Home extends StatefulWidget {
  Home({Key key}): super(key: key);
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  Offset _offset = Offset.zero;


  @override
  Widget build(BuildContext context) {
    return new Transform(
        transform: Matrix4.identity()
               ..setEntry(3, 2, 0.001)
               ..rotateX(0.01 * _offset.dy)
               ..rotateY(-0.01 * _offset.dx),

        alignment: FractionalOffset.center,
        child: new Scaffold(
          appBar: AppBar(
            title: Text("The 3D Matrix"),
          ),
          body: GestureDetector(
              onPanUpdate: (details) => setState(() => _offset += details.delta),
              onDoubleTap: () => setState(() => _offset = Offset.zero),
              onTap: (){},
              child: Content())
        ),);
  }
}

