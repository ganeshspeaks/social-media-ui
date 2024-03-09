import 'package:flutter/material.dart';
import 'package:social_media/Tabs/Data/data.dart';

class HomeFeed extends StatefulWidget {
  const HomeFeed({super.key});

  @override
  State<HomeFeed> createState() => _HomeFeedState();
}

class _HomeFeedState extends State<HomeFeed> {

  Color iconColor = Colors.black54;

  

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title:const Text('Social App'),

        actions: [
          IconButton(
            onPressed: (){
              
            }, 
            icon:const Icon(Icons.search),
          ),

          IconButton(
            onPressed: (){
              _scaffoldKey.currentState?.openEndDrawer();
            }, 
            icon:const Icon(Icons.settings),
          ),
        ],
      ),


      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration:const BoxDecoration(
                color: Colors.blue,
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text('Settings',style: TextStyle(color: Colors.white),),
                  TextButton(
                    onPressed: (){
                      _scaffoldKey.currentState?.openDrawer();
                    }, 
                    child:const Text('X', style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
            ),

            ListTile(
              title:const Text('General'),
              onTap: (){},
            ),

            ListTile(
              title:const Text('Theme'),
              onTap: (){},
            ),
            ListTile(
              title:const Text('Account'),
              onTap: (){},
            ),

            ListTile(
              title:const Text('Help'),
              onTap: (){},
            ),
          ],
        ),
      ),

      body: ListView.builder(
        itemCount: person.length,
        itemBuilder: (context, index) {
          return Container(
            decoration:const BoxDecoration(
              border: Border.symmetric(horizontal: BorderSide(width: 1, color: Colors.black54), vertical: BorderSide.none)
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
            
                          //profile icon
                          const Icon(Icons.account_circle),
                          const SizedBox(width: 10,),
            
                          // person name
                          Text(
                            person[index],
                            style:const TextStyle(
                              fontWeight:FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Text('2h ago'),
                    ],
                  ),
                      
                  const SizedBox(height: 20,),
                      
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.network(
                      imageUrls[index],
                      width: double.infinity,
                      fit: BoxFit.contain,
                    ),
                  ),

                  const SizedBox(height: 10,),

                  // Like Comment and Share
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: (){
                          setState(() {
                            iconColor = Colors.blue;
                          });
                        }, 
                        icon:Icon(
                          Icons.favorite,
                          color: iconColor,
                        )
                      ),

                      IconButton(
                        onPressed: (){}, 
                        icon:Icon(Icons.insert_comment_rounded, color: iconColor,)
                      ),

                      IconButton(
                        onPressed: (){}, 
                        icon:Icon(Icons.share, color: iconColor,)
                      ),

                      
                    ],
                  )
                ],
              ),
            ),
          );
        },

      ),
    );
  }
}