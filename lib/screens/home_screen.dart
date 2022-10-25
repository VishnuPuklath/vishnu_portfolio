import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio_vishnu/constants.dart/data.dart';
import 'package:portfolio_vishnu/widgets/gradient_button1.dart';
import 'package:portfolio_vishnu/widgets/project_card.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeScreen extends StatelessWidget {
  List<String> imageList = [
    'https://images.unsplash.com/photo-1434725039720-aaad6dd32dfe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bGFuZHNjYXBlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/34/BA1yLjNnQCI1yisIZGEi_2013-07-16_1922_IMG_9873.jpg?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGxhbmRzY2FwZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/34/BA1yLjNnQCI1yisIZGEi_2013-07-16_1922_IMG_9873.jpg?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGxhbmRzY2FwZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(shrinkWrap: true, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: coverheight,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.white, Colors.blue],
                ),
              ),
              child: const Align(
                alignment: Alignment.bottomCenter,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
                  radius: 60,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GButton1(text: 'Email'),
                const SizedBox(
                  width: 10,
                ),
                GButton1(
                  text: 'Resume',
                )
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ResponsiveRowColumn(
            rowMainAxisAlignment: MainAxisAlignment.center,
            layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            children: [
              ResponsiveRowColumnItem(
                rowFlex: 3,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Card(
                        elevation: 0,
                        color: Colors.blue[50],
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Experience',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                    'Lorem Ipsum is simply dummy text ofthe industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum'),
                              ]),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Card(
                        color: Colors.blue[50],
                        elevation: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'About me',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                    'Lorep into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum')
                              ]),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Card(
                        elevation: 0,
                        color: Colors.blue[50],
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Experience',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                    'Lorem Ipsum is simply dummy text ofthe industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum'),
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ResponsiveRowColumnItem(
                rowFlex: 1,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset:
                                  Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Card(
                          elevation: 0,
                          color: Colors.blue[50],
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Location',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.circle,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text('Kerala,India'),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    'Website',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Row(
                                    children: [
                                      Text('www.demo.com'),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      IconButton(
                                        iconSize: 15,
                                        onPressed: () {},
                                        icon: Icon(Icons.launch),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    'Portfolio',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Row(
                                    children: [
                                      Text('www.portfolio.com'),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      IconButton(
                                        iconSize: 15,
                                        onPressed: () {},
                                        icon: Icon(Icons.launch),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    'Email',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Row(
                                    children: [
                                      const Text('www.email.com'),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      IconButton(
                                        iconSize: 15,
                                        onPressed: () {},
                                        icon: Icon(Icons.launch),
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        CarouselSlider(
          items: imageList
              .map((item) => Container(
                    height: 200,
                    width: 200,
                    child: Center(
                        child: Image.network(
                      item,
                      fit: BoxFit.cover,
                      width: 100,
                    )),
                  ))
              .toList(),
          options: CarouselOptions(
              autoPlay: true, aspectRatio: 2.0, enlargeCenterPage: true),
        ),
        const Divider(
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
        ResponsiveRowColumn(
          columnPadding: EdgeInsets.all(15),
          rowPadding: EdgeInsets.all(15),
          columnCrossAxisAlignment: CrossAxisAlignment.stretch,
          rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
          layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
          children: [
            ResponsiveRowColumnItem(
                child: ProjectCard(
              color: Colors.blue,
            )),
            ResponsiveRowColumnItem(
                child: ProjectCard(
              color: Colors.blueGrey,
            )),
            ResponsiveRowColumnItem(
                child: ProjectCard(
              color: Colors.teal,
            )),
            ResponsiveRowColumnItem(
                child: ProjectCard(
              color: Colors.grey,
            )),
          ],
        )
      ]),
    );
  }
}









































// ResponsiveRowColumnItem(
//           child: GridView.count(
//             shrinkWrap: true,
//             crossAxisCount: 4,
//             children: [ProjectCard(), ProjectCard()],
//           ),
//         )