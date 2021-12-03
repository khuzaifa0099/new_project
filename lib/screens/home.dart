import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:new_project/screens/bottom_nav.dart';
import 'package:new_project/screens/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

//final controller = PageController(viewportFraction: 0.8, keepPage: true);

int activeState = 0;
final imageListt = [
  "images/one.png",
  "images/two.png",
  "images/three.png",
  "images/four.png",
  // "images/five.png",
  // "images/six.png",
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomAppBar(),
            SizedBox(
              height: 3,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              width: size.width * 0.9,
              child: textField(
                  Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  "Search",
                  false),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: size.width * 0.06,
                  ),
                  width: size.width * 0.48,
                  child: textField(
                      Icon(
                        Icons.add_location_alt,
                        color: Colors.black,
                      ),
                      "Zip Code",
                      false),
                ),
                SizedBox(
                  width: 10,
                ),
                Material(
                  elevation: 10,
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: size.width * 0.4,
                    height: size.height * 0.074,
                    child: Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                  left: size.width * 0.20, right: size.width * 0.20),
              child: Text(
                "BROWSE BY SERVICE CATEGORY",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CarouselSlider.builder(
              itemCount: imageListt.length,
              itemBuilder: (context, index, realIndex) {
                final imageList = imageListt[index];
                return buildImageUrl(imageList, index);
              },
              options: CarouselOptions(
                  height: 200,
                  //to show one image on the screen
                  viewportFraction: 1,
                  autoPlay: true,
                  //reverse: true,
                  // for duration
                  //autoPlayInterval: Duration(seconds: 2),
                  // to show image large
                  enlargeCenterPage: true,
                  // page slide
                  //pageSnapping: false,
                  // when  image  is over
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      activeState = index;
                    });
                  }),
            ),
            SizedBox(
              height: 15,
            ),
            buildIndicator(),
            SizedBox(
              height: 40,
            ),
            Container(height: 250, child: Image.asset("images/f.png")),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(
                "NEED A PLUMBER, ELECTRICIAN OR ACCOUNTANT? WE CAN FIND ANY OF THOSE FOR YOU."
                " AND THE BEST PART ID THAT IT'S FREE SO COME JOIN US!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(
                "Service Quotations, Employer Reviews, And Real-Time Chat Functionalty "
                "Between You And Your Service Provider All One App",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(height: 250, child: Image.asset("images/ff.png")),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(
                "WE'LL MAKE YOUR SERVICES WORTH YOUR TIME, AND EFORT.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 11,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(
                "Joining Us As A Professional Service Provider is Simple And Easy Create Your Work Profile,"
                "Uploade Your Resume And Credentials To Get Started! Yoyu Simply Just Need An Account  With Us TODAY "
                "So That You Can Start Reciving Assignment In No Time At All",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 35,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.cyan.shade600,
              ),
              child: TextButton(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>VerifiedFile()
                  // ));
                },
                child: Text('Join Us',
                    style: TextStyle(color: Colors.white, fontSize: 15)),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              color: Colors.cyan.shade600,
              height: 170,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      "EXPLORE THE BEST PROVIDER NEAR YOU",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "Your Job Will Be Sent To Our Qualified Service Professional. You'll Get "
                      "Matched Through SMART Al Bidding Process And They'll Send You "
                      "A Quote That Matches What You Need!",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 9, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 40,
                    width: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(
                          width: 1,
                          color: Colors.white,
                        )),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Explore Now",
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNav(),
    );
  }

  TextField textField(Icon icon, String hintText, var obscTextTrue) {
    return TextField(
      obscureText: obscTextTrue,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 1),
            borderRadius: BorderRadius.circular(10)),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.black),
        prefixIcon: icon,
      ),
    );
  }

  Widget buildImageUrl(String urlImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        color: Colors.grey,
        child: Image.asset(urlImage),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
      activeIndex: activeState, count: imageListt.length);
}
