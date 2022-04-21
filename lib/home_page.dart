
import 'package:flutter/material.dart';
import 'package:untitled/detail_page.dart';
class Homepage extends StatefulWidget {
  static final String id='new_page';


  @override
  State<Homepage> createState() => _HomepageState();

}


class _HomepageState extends State<Homepage> {

  String data="ButtonOne";
  Future _openDetails() async {
    Map results=await Navigator.of(context).push(
        new MaterialPageRoute(builder: (BuildContext context) {
          return new Detail_page("Hello Abdulloh",21);
        },
        ));
    if (results!=null && results.containsKey('data')){
     setState(() {
       data=results['data'];
     });
    }else {
      print('nothing');
    }
  }
  void _backToFinish(String value,BuildContext context){
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
            _openDetails();
           // Navigator.pushReplacementNamed(context, Detail_page.id);
          },

          child: Text(data),
        ),
      ),
    );
  }
}
