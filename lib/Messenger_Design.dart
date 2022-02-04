import 'package:flutter/material.dart';

class Massenger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20,
        backgroundColor: Colors.black,
        title:Row(

          children: const [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage("https://i.ibb.co/RBS8rcC/272967640-2354333371374957-6205038670510709853-n.jpg"),
            ),
            SizedBox(width: 20),
            Text("chats"),
          ],
        ) ,
        actions: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.white24,
            child: IconButton(onPressed: (){}, icon: const Icon(

              Icons.camera_alt,
              color: Colors.black,
              size: 16,
            )),
          ),
          const SizedBox(width: 10),
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.white24,
            child: IconButton(onPressed: (){}, icon: const Icon(
              Icons.edit,
              color: Colors.black,
              size: 16,
            )),
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(top: 10),
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(20) ,
                      color: Colors.grey[300],
                    ),
                    width: double.infinity,

                    padding: const EdgeInsetsDirectional.all(5) ,
                    child: Row(
                      children: const [
                        Icon(Icons.search),
                        SizedBox(width: 10,),
                        Text("search"),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 13,),
                // online
                Container(
                  height: 130,
                  child: ListView.separated(itemBuilder:(context ,index)=> online()
                  ,itemCount: 10
                  ,scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    separatorBuilder: (context,index)=>SizedBox(width: 10,),
                  ),
                ),
                SizedBox(height: 10,),
                ListView.separated(shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics()
                    ,itemBuilder: (context,index)=>chats()
                    , separatorBuilder:(context,index)=>(SizedBox(height: 15,)) , itemCount: 15)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget online()=>Row(
  children: [
    Container(
      width: 85,
      child: Column(
        children:  [
          Stack(
            alignment:AlignmentDirectional.bottomEnd ,
            children: const [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage("https://i.ibb.co/RBS8rcC/272967640-2354333371374957-6205038670510709853-n.jpg"),
              ),
              CircleAvatar(
                radius: 7,
                backgroundColor: Colors.green,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          const Text("Abdelrhman khaled Elswalhi"
            ,style: TextStyle(color: Colors.white,
            ),
            maxLines: 2,
            overflow:TextOverflow.ellipsis ,)
        ],
      ),
    ),
  ],
);
Widget chats()=> Row(
  children: [
    Stack(
      alignment:AlignmentDirectional.bottomEnd ,
      children: const [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage("https://i.ibb.co/RBS8rcC/272967640-2354333371374957-6205038670510709853-n.jpg"),
        ),
        CircleAvatar(
          radius: 7,
          backgroundColor: Colors.green,
        ),
      ],
    ),
    SizedBox(width: 20,),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Abdelrhman khaled elswalhi ",
            maxLines: 1,
            overflow: TextOverflow.ellipsis
            ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 15),),
          const SizedBox(height: 6,),
          Row(children: [
            const Expanded(child: Text("hello my name is swalhi hello my name is swalhi hello my name is swalhi hello my name is swalhi hello my name is swalhi ",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white)))
            ,Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                width: 5,
                height: 5,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            const Text("02:00 PM", style: TextStyle(color: Colors.white),),
          ],)
        ],
      ),
    ),
  ],
);