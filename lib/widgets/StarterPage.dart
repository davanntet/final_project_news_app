
import 'package:flutter/material.dart';

class StarterPage extends StatelessWidget {
  const StarterPage({super.key});

  @override
  Widget build(BuildContext context) {
    double heights = MediaQuery.of(context).size.height;
    return  Scaffold(
      body: Column(
          mainAxisSize: MainAxisSize.max,
         children: [
           SizedBox(
             height: heights*0.33333,
           ),
            SizedBox(
              height: heights*0.33333,
              child: Center(
                child: Column(
                  children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/images/logo.png'),
                      ),
                    const SizedBox(height: 10,),
                    Text("Wellcome",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                    const SizedBox(height: 10,),
                    Text("Enjoy the experience\n of reading the latest news from\n around the world",style: TextStyle(fontSize: 16,color: Colors.grey),textAlign: TextAlign.center,),
                  ],
                )
              ),
            ),
            SizedBox(
              height: heights*0.33333,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: (){},
                      child: Text("Create an account",),
                  )
                ],
              )
            ),

        ],
      ),
    );
  }
}
