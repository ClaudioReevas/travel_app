import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }


}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {

  IconData icon;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
      super.initState();
      this.icon = Icons.favorite_border;
  }
  void onPressedFav(){
    if(this.icon == Icons.favorite_border) {
      Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text("Agregaste a tus Favoritos"),
          )
      );
    } else {
      Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text("Removiste de tus Favoritos"),
          )
      );
    }

    setState(() {
      if(this.icon == Icons.favorite_border) {
        this.icon = Icons.favorite;
      } else {
        this.icon = Icons.favorite_border;
      }
    });
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        this.icon
      ),
    );
  }
}