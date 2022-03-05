import 'package:egyption_food/model/models.dart';
import 'package:flutter/material.dart';
import 'package:egyption_food/screen/detail.dart';
import 'package:hexcolor/hexcolor.dart';
class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const  Text('Yam Yam '),),
      body:
      Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GridView(
            children: meals.map((e) {
              return InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>DetailScreen(list: e) ,));
                },
                child: Container(

                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: HexColor('333739'),
                  ),
                  child: Center(child: Text(e.title,style: Theme.of(context).textTheme.bodyText1,textAlign: TextAlign.center,)),

                ),
              );
            }).toList(),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              childAspectRatio: 3 / 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
            ),),


        ),
      ),
    );
  }
}
