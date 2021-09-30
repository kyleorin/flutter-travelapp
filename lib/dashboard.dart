import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DashboardPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 35, horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Fly anywhere\nyou like to travel',
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.all(Radius.circular(32))),
                      child: const Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ],
                )),
            Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(28)),
                    color: Colors.grey[200]),
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text('Search'),
                        const Icon(Icons.location_on_outlined,
                            color: Colors.grey)
                      ],
                    ))),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(28)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Text('All',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(color: Colors.white)),
                          )),
                      Container(
                          decoration: const BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.all(Radius.circular(28)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Text('Flight',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(color: Colors.white)),
                          )),
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(28)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Text('Train',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(color: Colors.white)),
                          )),
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(28)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Text('Cruise',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(color: Colors.white)),
                          ))
                    ])),
            Column(children: [
              GridView.count(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                children: [
                  gridView('canada.jpg', context, 'Canada', '230'),
                  gridView('australia.jpg', context, 'Australia', '230'),
                  gridView('bali.jpeg', context, 'Bali', '230'),
                  gridView('brazil.jpg', context, 'Brazil', '230'),
                  gridView('croatia.jpeg', context, 'Croatia', '230'),
                  gridView('ireland.jpg', context, 'Ireland', '230'),
                  gridView('london.jpg', context, 'London', '230'),
                  gridView('paris.jpg', context, 'Paris', '230'),
                  gridView('rio.jpg', context, 'Rio', '230'),
                  gridView('rome.jpg', context, 'Rome', '230'),
                  gridView('tel_aviv.jpg', context, 'Israel', '230'),
                  gridView('thiland.jpg', context, 'Thiland', '230'),
                  gridView('vegas.jpg', context, 'Vegas', '230'),
                ],
              )
            ])
          ],
        ),
      ),
    );
  }

  Widget gridView(imageName, context, title, subtitle) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      child: Container(
          height: 220,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(32)),
            image: DecorationImage(
                image: AssetImage('assets/$imageName'),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter),
          ),
          child: Container(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5, left: 2, right: 2),
                child: ListTile(
                    title: Text(title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize:
                                Theme.of(context).textTheme.subtitle1!.fontSize,
                            fontWeight: FontWeight.bold)),
                    trailing: Container(
                        decoration: const BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 8),
                            child: Text(
                              subtitle,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .fontSize),
                            )))),
              ))),
    );
  }
}
