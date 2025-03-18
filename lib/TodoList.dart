import 'package:add_remove_product/style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return MyHomePageUi();
  }
}

class MyHomePageUi extends State<MyHomePage>{
  List TodoList =[];
  String item='';
  int count=0;


  InputOnchanged(value){
    setState(() {
      item=value;
    });
  }
  AddItem(){
    setState(() {

      if (item.isNotEmpty) {
        setState(() {
          TodoList.add({'item': item});
          count++;
        });
      }
    });
  }
  RemoveItem(index){
    setState(() {

      TodoList.remove(index);
      count--;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(
         title: Text("Todo App"),
         backgroundColor: Colors.green,

       ),
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: Row(
              children: [
                Expanded(
                  flex: 80,
                    child: TextFormField(
                      onChanged: (value){
                        InputOnchanged(value);
                      },
                   decoration: InputDesign("Input value"),
                )),
                SizedBox(width: 11,),
                Expanded(
                    flex: 20,
                    child: ElevatedButton(onPressed: (){
                      AddItem();
                    }, child: Text("Add ${count}"),style: Button(),))
              ],
            )

          ),
          Expanded(
              flex: 90,
              child: ListView.builder(
                 itemCount: TodoList.length,
                  itemBuilder:(context,index){
                   return Card(
                     child: Listitem(
                       Row(
                         children: [
                           Expanded(
                               flex:90,
                               child: Text(TodoList[index]['item'].toString())),

                           Expanded(
                               flex: 10,
                               child: TextButton(onPressed: (){
                                 RemoveItem(TodoList[index]);
                               }, child: Icon(Icons.delete)) ),
                         ],
                       ),
                     ),
                   );
              }))

        ],
      ),
    );
  }
}