import 'package:clone_hotels/widgets/constant.dart';
import 'package:clone_hotels/widgets/images.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class RoomsList extends StatefulWidget {
  const RoomsList({super.key});

  @override
  State<RoomsList> createState() => _RoomsListState();
}

class _RoomsListState extends State<RoomsList> {
  PageController pageController = PageController(viewportFraction: 0.8);
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            height: 350,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: pageController,
              itemCount: imagesToRoomsList.length,
              physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                          color: const Color.fromARGB(255, 112, 109, 109),
                          width: 2)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                          child: SizedBox(
                              height: 200,
                              child: Image.asset(
                                imagesToRoomsList[index],
                                fit: BoxFit.cover,
                              ))),
                      Text(
                        areaHotels[index],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        city[index],
                      ),
                      Row(
                        children: [
                          Text(
                            "${ratingHotels[index]}/10",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            " Exeptional (800 reviews)",
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.red),
                              height: 24,
                              width: 70,
                              child: Row(
                                children: [
                                  Icon(Icons.local_offer, size: 12, color: Colors.white,).paddingOnly(right:4, left: 6),
                                  Text("${discontHotels[index]}% off", style: TextStyle(fontSize: 12, color: Colors.white),),
                                  
                                ],
                              ),
                              // leading: Icon(
                              //   Icons.local_offer,
                              //   size: 14,
                              ).paddingAll(4),
                              Text("New count: ${countApart[index]}", style: TextStyle(fontWeight: FontWeight.bold, ),),
                              Text("per night", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 8),),
                              Text("icludes taxes & fees", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 8 ),),

                          ],
                        ),
                        // ).center(),
                      )
                    ],
                  ),
                ).paddingRight(20);
              },
            ),
          ),
        ],
      ),
    );
  }
}
