import 'package:flutter/material.dart';

void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          title: Text("Instagram"),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 2,
           child:  Status(),
            ),
            SizedBox(height: 1,),
            Expanded(
              flex: 8,
                child: Profile()
            )
          ],
        ),
      ),
    );
  }
}
//For status
class Status extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (_,index){
          return StatusView();
        }
    );
  }
}
//For Photo
class StatusView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      color:Colors.black,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 120,
              width: 120,
              child: SizedBox(
                height: 110,
                width: 110,
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                            gradient: SweepGradient(
                                colors: [
                                  Colors.purple,
                                  Colors.orangeAccent,
                                  Colors.purple,
                                  Colors.purple,
                                ]
                            )
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Icon(Icons.person,size: 60,color: Colors.white,),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Text("Status", style: TextStyle(fontSize: 18,color: Colors.white),)
          ]
      ),
    );
  }

}

//For Profile
class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: (_,index){
          return ProfileView();
        }
    );
  }

}

class ProfileView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            color:Colors.black,
            child: Row(
              children: [
              Row(
                children: [
                  Container(
                  height: 45,
                  width: 45,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 45,
                          width: 45,
                          child: SizedBox(
                            height: 35,
                            width: 35,
                            child: Stack(
                              children: [
                                Center(
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        shape: BoxShape.circle,
                                        gradient: SweepGradient(
                                            colors: [
                                              Colors.purple,
                                              Colors.orangeAccent,
                                              Colors.purple,
                                              Colors.purple,
                                            ]
                                        )
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    child: Icon(Icons.person,size: 18,color: Colors.white,),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ]
                  ),
                            ),
                ],
              ),
                Text("__User 8h",style: TextStyle(color: Colors.white,fontSize: 16),)
              ],
            ),
          ),
          SizedBox(height: 1,),
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,

            ),
              child: Image.asset("assets/images/vjs.png")
          ),
          SizedBox(height: 1,),
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Row(

                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 11,),
                  Icon(Icons.favorite_border,size: 30,color: Colors.white,),
                  SizedBox(width: 11,),
                  Icon(Icons.message,size: 30,color: Colors.white,),
                  SizedBox(width: 11,),
                  Icon(Icons.send,size: 30,color: Colors.white,),
                  SizedBox(width: 245,),
                  Icon(Icons.bookmark_border,size: 30,color: Colors.white,)
                ],
              ),
                SizedBox(height: 11,),
                Text("  200k likes",style: TextStyle(color: Colors.white,fontSize: 14),),
                Text("  Aarambichachu… 🔥",style: TextStyle(color: Colors.white,fontSize: 14),),
            ],
            )
          )
        ],
      ),
    );
  }
}