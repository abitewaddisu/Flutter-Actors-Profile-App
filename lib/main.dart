import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black87,
          drawerScrimColor: Colors.white,
          body: Stack(
            children: [
              CustomScrollView(
                slivers: [
                  SliverAppBar(
                    expandedHeight: 450,
                    flexibleSpace: FlexibleSpaceBar(
                      collapseMode: CollapseMode.pin,
                      title: Text('Emma Watson'),
                      titlePadding: EdgeInsets.only(left: 16, bottom: 28),
                      background: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/emma.jpg'),
                            fit: BoxFit.cover
                          )
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.black87,
                                Colors.black12
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              stops: [0.0, 0.6]
                            )
                          ),
                          // alignment: Alignment.bottomLeft,
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
                            child: Row(
                              children: [
                                Text('60 Videos'),
                                SizedBox(width: 40),
                                Text('dls')
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.symmetric(vertical: 40), child: Text('Emma Charlotte Duerre Watson was born in Paris, France, to English parents, Jacqueline Luesby and Chris Watson, both lawyers. She moved to Oxfordshire when she was five, where se atended the Dreagon School.', style: TextStyle(fontSize: 20),)),
                          Padding(padding: EdgeInsets.symmetric(vertical: 10), child: Text('Born', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)),
                          Text('April, 15th 1990, Paris, France', style: TextStyle(fontSize: 20),),
                          SizedBox(height: 30),
                          Padding(padding: EdgeInsets.symmetric(vertical: 10), child: Text('Nationality', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)),
                          Text("British", style: TextStyle(fontSize: 20)),
                          SizedBox(height: 20),
                          Padding(padding: EdgeInsets.symmetric(vertical: 20), child: Text('Videos', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(children: [
                              Container(
                                height: 200, 
                                width: 320, 
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30), 
                                  image: const DecorationImage(
                                    image: AssetImage('assets/images/emma-1.jpg')
                                  )
                                ), 
                                margin: const EdgeInsets.symmetric(horizontal: 10), 
                                child: Container(
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Colors.black87, Colors.black12], 
                                      begin: Alignment.bottomCenter, 
                                      end: Alignment.topCenter, 
                                      stops: [0, 0.5]
                                    )
                                  ),
                                  child: const Icon(Icons.play_arrow, size: 60)
                                )
                              ),
                              Container(
                                height: 200, 
                                width: 320, 
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30), 
                                  image: const DecorationImage(
                                    image: AssetImage('assets/images/emma-2.jpg')
                                  )
                                ), 
                                margin: const EdgeInsets.symmetric(horizontal: 10), 
                                child: Container(
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Colors.black87, Colors.black12], 
                                      begin: Alignment.bottomCenter, 
                                      end: Alignment.topCenter, 
                                      stops: [0, 0.5]
                                    )
                                  ), 
                                  child: const Icon(Icons.play_arrow, size: 60)
                                )
                              ),
                              Container(
                                height: 200, 
                                width: 320, 
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30), 
                                  image: const DecorationImage(
                                    image: AssetImage('assets/images/emma-3.jpg')
                                  )
                                ), 
                                margin: const EdgeInsets.symmetric(horizontal: 10), 
                                child: Container(
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Colors.black87, Colors.black12], 
                                      begin: Alignment.bottomLeft, 
                                      end: Alignment.topRight, 
                                      stops: [0, 0.8]
                                    )
                                  ), 
                                  child: const Icon(Icons.play_arrow, size: 60)
                                )
                              ),
                            ]),
                          ),
                          SizedBox(height: 70)
                        ],
                      ),
                    ),
                  )
                ]
              ),
              Positioned(
                left: 0,
                bottom: 0,
                right: 0,
                child: TextButton(
                  onPressed: () {},
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    alignment: Alignment.center,
                    child: Text('Follow', style: TextStyle(color: Colors.white, fontSize: 20)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
