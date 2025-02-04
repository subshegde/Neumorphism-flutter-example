import 'package:flutter/material.dart';
import 'package:music_player_ui/pages/neu_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [ 
              const SizedBox(height: 10,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [SizedBox(
                height: 80,
                width: 80,
                child: NeuBox(
                  child: Icon(Icons.arrow_back),)
                ),
                Text('P L A Y L I S T'),
                SizedBox(
                height: 80,
                width: 80,
                child: NeuBox(
                  child: Icon(Icons.menu),)
                ),
              ],),
              const SizedBox(height: 15,),
              // cover art , artist name , song name
              NeuBox(child: Column(

                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    child: Image.asset('assets/images/cover_art.jpg')),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('The Weeknd',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.grey),),
                          Text('Blinding Lights',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            ],
                          ),
                          Icon(Icons.favorite,color: Colors.red,size: 30,)
                        ],
                      ),
                    )
                ],
              )),
              const SizedBox(height: 20,),

          
              //start time , shuffle btn , repeat btn and end time 
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('0:00'),
                  Icon(Icons.shuffle),
                  Icon(Icons.repeat),
                  Text('4:22')
                ],
              ),
              const SizedBox(height: 20,),
              // linear bar
              NeuBox(
                child: LinearPercentIndicator(
                  lineHeight: 10,
                  percent: .8,
                  progressColor: Colors.green,
                  backgroundColor: Colors.transparent,
                ),
              ),

              const SizedBox(height: 20,),

          
              // previous song btn, pause play btn, next song btn
              const SizedBox(
                height: 80,
                child: Row(children: [
                  Expanded(
                    flex: 1,
                    child: NeuBox(child: Icon(Icons.skip_previous,size: 32,),)),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: NeuBox(child: Icon(Icons.play_arrow,size: 32,),),
                    )),
                  Expanded(
                    flex: 1,
                    child: NeuBox(child: Icon(Icons.skip_next,size: 32,),)),
                ],),
              )
            ],
          ),
        ),
      )
    );
  }
}
