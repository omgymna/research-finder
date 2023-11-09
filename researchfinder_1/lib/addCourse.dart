import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:researchfinder_1/constants.dart';

class AddCoursePage extends StatefulWidget { 
const AddCoursePage({Key? key}) : super(key: key); 

@override 
_AddCoursePageState createState() => _AddCoursePageState(); 
} 

class _AddCoursePageState extends State<AddCoursePage>{
  bool selected = false;

  List<String> courses= [];

  TextEditingController _controller = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      body: 
        Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(75),
              child: Text(
                "Add your courses below",
                style: TextStyle(
                  color: Colors.brown,
                  fontFamily: 'OpenSans',
                  fontSize: 30,


                ),
              ),
            ),


            Container(
              alignment: Alignment.center,

              margin: EdgeInsets.only(left:200, right: 200, bottom: 25),
              decoration: BoxDecoration(
                color: Color.fromARGB(173, 161, 140, 116),
                borderRadius: BorderRadius.circular(10),
              ),
              
              child: TextFormField(
                textAlign: TextAlign.center,
                style: TextStyle( color: Colors.white, fontSize: 30, fontFamily: 'OpenSans'),

              controller: _controller,

            )),
            Container
            (
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                

                color: Color(0xFF56674A),
                borderRadius: BorderRadius.circular(10),
              ),

              child: TextButton(
                onPressed: () {
                  setState(() {
                    if(_controller.text.length>0){
                      courses.add(_controller.text);
                      _controller.clear();
                    } else{
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Color(0xFF56674A),
                        content: Text("Text is Empty, Please Add a Course", style: TextStyle(fontSize: 20, fontFamily: 'OpenSans'),
                        textAlign: TextAlign.center,),
                      ));
                    }
                    });
                  },
                child: Text("Add Course",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'OpenSans',
                    )
                ),
            )
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color.fromARGB(166, 194, 190, 180),
                borderRadius: BorderRadius.circular(5)
              ),
              child:Text(courses.isNotEmpty?courses.toString():"",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    color: Colors.brown,
                    fontFamily: 'OpenSans',
                  )
            ),)
          ],
        ),
      ),
    );
  }
}