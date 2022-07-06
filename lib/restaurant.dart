import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:project_gsg_first/widget/all_restaurant_widget.dart';
import 'package:project_gsg_first/widget/campaigns_widget.dart';
import 'package:project_gsg_first/widget/categoriers_widget.dart';
import 'package:project_gsg_first/widget/indecator.dart';
import 'package:project_gsg_first/widget/popular_food_nearby_widget.dart';
import 'package:project_gsg_first/widget/popular_restaurant_widget.dart';

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({Key? key}) : super(key: key);

  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.orange.shade400,
                ),
                labelText: 'search your desiered foods or restaurent',
                hintStyle: TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.all(10.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                onPageChanged: (int value) {
                  setState(() {
                    _currentPage = value;
                  });
                },
                children: [
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image(
                      width: double.infinity,
                      fit: BoxFit.cover,
                      image: AssetImage("image/imge1.png"),
                    ),
                  ),
                  Image(
                    image: AssetImage("image/imge1.png"),
                  ),
                  Image(
                    image: AssetImage("image/imge1.png"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Indecator(selected: _currentPage == 0),
                Indecator(selected: _currentPage == 1),
                Indecator(selected: _currentPage == 2),
              ],
            ),
            Row(
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "View All",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  CategoriseWidget(),
                  CategoriseWidget(),
                  CategoriseWidget(),
                  CategoriseWidget(),
                  CategoriseWidget(),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  'Popular Restaurants',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "View All",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 250,
              child: GridView(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, mainAxisSpacing: 5, mainAxisExtent: 280),
                children: [
                  PopularRestaurantsWidget(),
                  PopularRestaurantsWidget(),
                  PopularRestaurantsWidget(),
                  PopularRestaurantsWidget(),
                  PopularRestaurantsWidget(),
                  PopularRestaurantsWidget(),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Campaigns',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "View All",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 250,
              child: GridView(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, mainAxisSpacing: 5, mainAxisExtent: 280),
                children: [
                  CampaignsWidget(),
                  CampaignsWidget(),
                  CampaignsWidget(),
                  CampaignsWidget(),
                  CampaignsWidget(),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  'Popular Food Nearby',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "View All",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 110,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  PopularFoodNearbyWidget(),
                  PopularFoodNearbyWidget(),
                  PopularFoodNearbyWidget(),
                  PopularFoodNearbyWidget(),
                  PopularFoodNearbyWidget(),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  'New on Stackfood',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "View All",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 250,
              child: GridView(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, mainAxisSpacing: 5, mainAxisExtent: 280),
                children: [
                  PopularRestaurantsWidget(),
                  PopularRestaurantsWidget(),
                  PopularRestaurantsWidget(),
                  PopularRestaurantsWidget(),
                  PopularRestaurantsWidget(),
                  PopularRestaurantsWidget(),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  'All Restaurants',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "View All",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return AllResturantWidget();
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    indent: 5,
                    endIndent: 5,
                    color: Colors.grey,
                    height: 15,
                  );
                },
                itemCount: 5)
          ],
        ),
      ),
    );
  }
}
