import 'package:clone_hotels/componets/search_screen_component.dart';
import 'package:clone_hotels/screen/account_screen.dart';
import 'package:clone_hotels/screen/home_screen.dart';
import 'package:clone_hotels/screen/main_screen.dart';
import 'package:clone_hotels/screen/rewards_screen.dart';
import 'package:clone_hotels/screen/search_screen.dart';
import 'package:clone_hotels/screen/trips_screen.dart';
import 'package:flutter/material.dart';

String loremIpsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.";
List<String> areaHotels = ["Hotel Mariott", "Hotel Belarus", "Hotel Grey Goos"];
List<String> city = ["Moskow", "Sochi", "Sochi"];
List<int> countApart = [338, 78, 122];
List<double> ratingHotels = [9.8, 9.5, 8.2];
List<int> discontHotels = [35, 20, 18];



List<Widget> listBottomBarScreen = [HomeScreen(), RewardsScreen(), SearchScreen(), TripScreen(), AccountScreen()];