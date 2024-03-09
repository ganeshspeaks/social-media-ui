import 'package:flutter/material.dart';
import 'package:social_media/Tabs/Data/data.dart';


class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding:const EdgeInsets.all(8.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20,),

                Container(
                  foregroundDecoration: BoxDecoration(
                    border: Border.all(width: 1),
                    shape: BoxShape.circle,
                  ),
                  child:const  Icon(
                    Icons.account_circle,
                    size: 80,
                  ),
                ),

                const SizedBox(height: 20,),

                const Text(
                  'Ganesh Speaks',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20,),

                const Text(
                  'Hi! I am Ganesh Kumar. I am something. I love something. I do something. I like something. You should.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    
                  ),
                ),
                const SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding:const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.pink[700],
                      ),
                      child:const Text(
                        '200 Followers',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                    
                    Container(
                      padding:const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.blue[700],
                      ),
                      child:const Text(
                        '10 Following',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30,),

                const Divider(thickness: 1,),

                const SizedBox(height: 40,),

                const Text(
                  'Recent Posts',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 40,),

                
              ],
            ),

            GridView.builder(
              shrinkWrap: true,
              physics:const NeverScrollableScrollPhysics(),
              gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
              ),
              itemCount: imageUrls.length,
              itemBuilder: (BuildContext context, int index){
                return ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: AspectRatio(
                    aspectRatio: 1.0,
                    child: Image.network(
                      imageUrls[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}