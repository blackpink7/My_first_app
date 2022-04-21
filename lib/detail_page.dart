import 'package:flutter/material.dart';
class Detail_page extends StatefulWidget {

  static final String id='detail_page';
  final String input;
  final int age;

  Detail_page(this.input,this.age);
  @override
  State<Detail_page> createState() => _Detail_pageState();
}

class _Detail_pageState extends State<Detail_page> {
  void _backToFinish(String value,int age){
    Navigator.of(context).pop({'data':value});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Colors.blue,
          ),
              onPressed: (){
                //Navigator.of(context).pop();
                _backToFinish('Dart',33);
              },

          //Text('Second_page');
          child: Text('${widget.input} ${widget.age}'),
        ),
        //child: Text('${widget.input} ${widget.age}'),
      ),
    );
  }
}
