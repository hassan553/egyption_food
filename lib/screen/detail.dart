import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DetailScreen extends StatelessWidget {
 final list;

  const DetailScreen( {this.list});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('333739')
      ,
      appBar: AppBar(title: Text(list.title),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(

            child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(

                    height: 250,
                    width: double.infinity,
                    child: Image.asset(list.image,fit: BoxFit.fill,)),
               const  SizedBox(height: 15,),
                Center(child: Text('المكونات ',style: Theme.of(context).textTheme.bodyText2,)),
                const  SizedBox(height: 15,),
                Text(list.ingredients,style: Theme.of(context).textTheme.bodyText1,textDirection: TextDirection.rtl,),
                const  SizedBox(height: 15,),
                Center(child: Text('الخطوات  ',style: Theme.of(context).textTheme.bodyText2,)),
                const  SizedBox(height: 15,),
                Text(list.description,style: Theme.of(context).textTheme.bodyText1,textDirection: TextDirection.rtl,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
