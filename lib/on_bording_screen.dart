import 'package:flutter/material.dart';
import 'package:on_bording_screen/entity.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<OnBoardingEntity> _onBoardingData = OnBoardingEntity.onBoardingData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: PageView.builder(itemCount:_onBoardingData.length, itemBuilder: (context,index) {
    return OnBordingItem(
        title: _onBoardingData[index].title,
        description: _onBoardingData[index].description,
        image: _onBoardingData[index].image,
        index: index);
    } )
    );
  }
}


class OnBordingItem extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final int index;


  const OnBordingItem(
      { Key? key,
        required this.title,
        required this.description,
        required this.image,
        required this.index})
      : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset("assets/$image")),
        SizedBox(height: 20,),

      Text("$title",
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),

        SizedBox(height:20),

       Text("$description",textAlign: TextAlign.center,
       style: TextStyle(fontSize: 15, color: Colors.grey),
       ),

        SizedBox(height: 40),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 25,
              height: 15,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: index == 0 ? Colors.black : Colors.grey
              ),
            ),

            SizedBox(height: 18),


            Container(
              width: 25,
              height: 15,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index == 1 ? Colors.black : Colors.grey
              ),
            ),

            SizedBox(height: 18),

            Container(
              width: 25,
              height: 15,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index == 2 ? Colors.black : Colors.grey
              ),
            ),

          ],
        )

      ],
    );
  }
}
