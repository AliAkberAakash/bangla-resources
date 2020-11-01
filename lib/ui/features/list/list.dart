import 'package:bangla_programming_resources/utils/my_colors.dart';
import 'package:flutter/material.dart';

class DataList extends StatefulWidget {
  @override
  _DataListState createState() => _DataListState();
}

class _DataListState extends State<DataList> {
  var hp, wp;
  @override
  Widget build(BuildContext context) {
    hp = MediaQuery.of(context).size.height;
    wp = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _searchButton(),
            _datalist()
          ],
        ),
      ),
    );
  }

  Widget _searchButton(){
    return IconButton(icon: Icon(Icons.search, size: 30.0, color: matte_black), onPressed: (){});
  }

  Widget _datalist(){
    return Expanded(
              child: Container(
                height: hp,
                width: wp,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index){
                    return Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 15.0),
                      child: Container(
                        height: hp*0.11,
                        width: wp,
                        decoration: BoxDecoration(
                          color: primary,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), bottomLeft: Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: primary,
                              blurRadius: 6.0,
                              spreadRadius: 0.0,
                              offset: Offset(2.0, 2.0),
                            ),
                          ],
                        ),
                        child: Center(child: Text('Basic', style: TextStyle(color: white, fontSize: 24.0))),
                      ),
                    );
                  }
                ),
              ),
            );
  }
}