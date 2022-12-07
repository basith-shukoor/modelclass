import 'package:flutter/material.dart';

import 'modelclass.dart';

void main() {
  runApp(const Modelclass());
}

class Modelclass extends StatefulWidget {
  const Modelclass({Key? key}) : super(key: key);

  @override
  State<Modelclass> createState() => _ModelclassState();
}

class _ModelclassState extends State<Modelclass> {
  // List text = ['Bus', 'Car', 'bike', 'train', 'Flight'];
  // List icons = [
  //   Icons.bus_alert_rounded,
  //   Icons.car_crash_rounded,
  //   Icons.bike_scooter,
  //   Icons.train_rounded,
  //   Icons.flight,
  // ];
  // List images = [
  //   'images/bus.png',
  //   'images/car.png',
  //   'images/bike.jpg',
  //   'images/train.jpeg',
  //   'images/flight.jpg'
  // ];
List<Demo>Model=[
Demo(img: 'images/bus.png', tx: 'bus', ic: Icons.bus_alert_rounded),
  Demo(img:  'images/car.png', tx: 'car', ic:  Icons.car_crash_rounded),
  Demo(img:   'images/bike.jpg', tx: 'bike', ic:  Icons.car_crash_rounded),
  Demo(img:  'images/train.jpeg', tx: 'train', ic:  Icons.car_crash_rounded),
  Demo(img: 'images/flight.jpg', tx: 'flight', ic:  Icons.car_crash_rounded),

];
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(child: Text("Model Class")),
        ),
        body: ListView.builder(
          itemCount:Model.length ,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 80,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(Model[index].img),
                    ),
                    Text(Model[index].tx),
                    Icon(Model[index].ic),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
