import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_devalution_technique/Class/WavesClipper.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Send',
      style: optionStyle,
    ),
    Text(
      'Transport',
      style: optionStyle,
    ),
    Text(
      'Dashboard',
      style: optionStyle,
    ),
    Text(
      'Chat',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ProfileBody2(), 
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react,
        items: [
          TabItem(icon: SvgPicture.asset(
              'image/send.svg', // Ensure the path is correct
              width: 20,
              height: 19,
              color: _selectedIndex == 0 ? Color.fromRGBO(39, 57, 111, 1) : Colors.white
            ), title: 'Send'),
          TabItem(icon:  SvgPicture.asset(
              'image/transport.svg', // Ensure the path is correct
              width: 20,
              height: 19,
             color: _selectedIndex == 1 ? Color.fromRGBO(39, 57, 111, 1) : Colors.white

            ), title: 'Transport'),
          TabItem(icon:  SvgPicture.asset(
              'image/dashborad.svg', // Ensure the path is correct
              width: 20,
              height: 19,
                           color: _selectedIndex == 2 ? Color.fromRGBO(39, 57, 111, 1) : Colors.white

            ), title: 'Dashboard'),
          TabItem(icon: SvgPicture.asset(
              'image/chat.svg', // Ensure the path is correct
              width: 20,
              height: 19,
                           color: _selectedIndex == 3 ? Color.fromRGBO(39, 57, 111, 1) : Colors.white

            ), title: 'Chat'),
          TabItem(icon: SvgPicture.asset(
              'image/profile.svg', // Ensure the path is correct
              width: 33,
              height: 44.7,
                           color: _selectedIndex == 4 ? Color.fromRGBO(39, 57, 111, 1) : Colors.white

            ), title: 'Profile'),
        ],
        initialActiveIndex: _selectedIndex, // optional, default as 0
        onTap: _onItemTapped,
        backgroundColor: Colors.blue, // Background color of the bar
        activeColor: const Color.fromRGBO(19, 59, 183, 1), // Color of the active item
        color: const Color.fromARGB(255, 255, 255, 255), // Color of the inactive items
      ),
    );
  }
}

class ProfileBody2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
            children:[

              Positioned(
            child:  Container(
              margin: EdgeInsets.fromLTRB(27, 75, 32.2, 0),
              color: Color.fromRGBO(248, 248, 248, 1),
              height:259,
              width: 375,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               Container(
            width: 148,
            height: 148,
             margin: EdgeInsets.fromLTRB(0, 60, 0, 0),
            decoration: BoxDecoration(
            shape: BoxShape.circle, // تأكد من أن الشكل دائري
              border: Border.all(
                color: const Color.fromRGBO(82, 193, 255, 1),// لون الحدود
                width: 4.0, // عرض الحدود
              ),
              //borderRadius:BorderRadius.circular(74),
              image: DecorationImage(
                image: AssetImage('image/profilimage.png' , ), // ضع صورتك هنا
                fit: BoxFit.cover,
                 alignment: Alignment(-0.3, -1.0), 
                ),
            )
          ),
                Expanded(
                  child:Container(
                      //color: Colors.green,
                    margin: EdgeInsets.fromLTRB(15, 75, 0, 8.8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Container(
          width: 133,
          height: 35,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 21,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Member',
                        style: TextStyle(
                          color: Color(0xFF1A2E35),
                          fontSize: 9,
                          fontFamily: 'Space Grotesk',
                          fontWeight: FontWeight.w400,
                          height: 0.14,
                        ),
                      ),
                      TextSpan(
                        text: ' ',
                        style: TextStyle(
                          color: Color(0xFF1A2E35),
                          fontSize: 9,
                          fontFamily: 'Space Grotesk',
                          fontWeight: FontWeight.w700,
                          height: 0.14,
                        ),
                      ),
                      TextSpan(
                        text: 'since ',
                        style: TextStyle(
                          color: Color(0xFF1A2E35),
                          fontSize: 9,
                          fontFamily: 'Space Grotesk',
                          fontWeight: FontWeight.w400,
                          height: 0.14,
                        ),
                      ),
                      TextSpan(
                        text: '6th March 2024',
                        style: TextStyle(
                          color: Color(0xFF1A2E35),
                          fontSize: 9,
                          fontFamily: 'Space Grotesk',
                          fontWeight: FontWeight.w700,
                          height: 0.14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Text(
                  'Maryam.Bernoussy',
                  style: GoogleFonts.spaceGrotesk(
                    color: Color(0xFF191D31),
                    fontSize: 13,
                     
                    fontWeight: FontWeight.w700,
                    height: 0.09,
                  ),
                ),
              ),
            ],
          ),
        ),
                      Container(
          width: 24,
          height: 3,
          decoration: ShapeDecoration(
            color: Color(0xFF52C1FF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
        
        
         Container(
                        color: const Color.fromARGB(255, 251, 250, 250),
                                  width: 163,
          height: 72,
                          margin: EdgeInsets.fromLTRB(1, 5, 0, 0),
                          child: Text(
                            'Insert a mini bio below. Share a snippet about yourself—interests, background, or achievements—to give others a quick glimpse of who you are.',
                            style:GoogleFonts.spaceGrotesk(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              height: 1.3,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                  
                        Positioned(
                        bottom: -1,
                          child: Container(
          child: Align(
            alignment: Alignment.topLeft,
             child: Container(
              margin: const EdgeInsets.fromLTRB(0,0,5 ,0),
                width: 14,
                height: 14,
                child: SizedBox(
                  width: 14,
                height: 14,
                  child: SvgPicture.asset("image/group.svg")
                  )
              ),
            
          ),
        ),
                        ),
                     
                      ],
                    ),
                  )
                )
                 
                  
                ],
              ),
             
            ),
          ),
          Container(
            child: Positioned(
            child:  ClipPath(
              clipper: WaveClipper(),
              child: Container(
               // width: 375,
                height: 120,
                padding: EdgeInsets.only(top: 1-0, left: 16, right: 16, bottom: 10),
                color: Colors.blue,
                child: Padding(
                  padding: EdgeInsets.all(10),
               child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      iconSize: 20,
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        // Add your back button action here
                      },
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                       iconSize: 20,
                      icon: Icon(Icons.close, color: Colors.white),
                      onPressed: () {
                        // Add your close button action here
                      },
                    ),
                  ],
                ),
                )
              ),
            ),

           ),

          ),

          
            ]
            ),
          



           Container(
            margin: EdgeInsets.fromLTRB(25, 0, 25, 5),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'My stories',
                style: GoogleFonts.spaceGrotesk(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  height: 1.3,
                  color: Color(0xFF000000),
                ),
              ),
            ),
          ),

          Container(
            width: 326.75,
          height: 148.24,
         // color: Colors.black,
            margin:EdgeInsets.fromLTRB(24, 0, 24, 11.9),
            //EdgeInsets.fromLTRB(24, 0, 24.4,23.8),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Stack(
                  children: [
                Expanded(child: storyImage('image/skye.png')),
                Positioned(
                  top: 122,
                  left: 37,
                  child:    Container(
                    alignment: Alignment.center,
                  width: 25.51,
                  height: 25.51,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(
                      side: BorderSide(width: 0.77, color: Color.fromRGBO(197, 197, 197, 1)),
                    ),
                  ),
                  child:  Container(
                    
                    child: Icon(Icons.close, color: Color.fromRGBO(197, 197, 197, 1) ,) ,
                  )
                ),
                ),
                  ],
                ),
                SizedBox(width: 8),
                 Stack(
                  children: [
                Expanded(child: storyImage('image/mosce.png')),
                Positioned(
                  top: 122,
                  left: 37,
                  child:    Container(
                    alignment: Alignment.center,
                  width: 25.51,
                  height: 25.51,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(
                      side: BorderSide(width: 0.77, color: Color.fromRGBO(197, 197, 197, 1)),
                    ),
                  ),
                  child: Icon(Icons.close, color: Color.fromRGBO(197, 197, 197, 1)) ,
                ),
                ),
                               

                 
                  
    

                  ],
                ),
 // ضع صورك هنا
                SizedBox(width: 8),
                Expanded(child: addStoryButton()),
              ],
            ),
          ),
           
           
           
            Container(
            margin: EdgeInsets.fromLTRB(25, 0, 25, 9),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'About me',
                style: GoogleFonts.spaceGrotesk(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  height: 1.3,
                  color: Color(0xFF000000),
                ),
              ),
            ),
          ),
            sectionItem(Icons.info, 'Personal informations' , "image/group_34730_x2.svg" , 20 ,20),
            sectionItem(Icons.person, 'My identity',"image/group_34726_x2.svg" ,20,20),
            sectionItem(Icons.verified_user, 'Sendyo embassador',"image/group_34727_x2.svg" , 20.75 ,20.75),
            sectionItem(Icons.security, 'Account and security',"image/group_34728_x2.svg" , 20 ,20),
             SizedBox(height: 24),
             Container(
            margin: EdgeInsets.fromLTRB(25, 0, 25, 0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Payments',
                style: GoogleFonts.spaceGrotesk(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  height: 1.3,
                  color: Color(0xFF000000),
                ),
              ),
            ),
          ),
            sectionItem(Icons.transfer_within_a_station, 'Transfer options' ,"image/group_34729_x2.svg" ,22 , 22),
            sectionItem(Icons.payment, 'Payment methods',"image/group_34733_x2.svg" ,20 , 20),
            sectionItem(Icons.account_balance_wallet, 'Wallet',"image/group_34731_x2.svg" ,17.87,20) ,
            sectionItem(Icons.history, 'Transaction history',"image/group_34735_x2.svg" ,20 ,20),
            SizedBox(height: 24),
             Container(
            margin: EdgeInsets.fromLTRB(25, 0, 25, 0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'More',
                style: GoogleFonts.spaceGrotesk(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  height: 1.3,
                  color: Color(0xFF000000),
                ),
              ),
            ),
          ),
            sectionItem(Icons.notifications, 'Notifications',"image/group_34739_x2.svg" ,20,20),
            sectionItem(Icons.help, 'FAQ and help',"image/group_34736_x2.svg" ,20,20),
            sectionItem(Icons.description, 'Terms and conditions',"image/group_34737_x2.svg" ,20 ,20),
            sectionItem(Icons.logout, 'Logout',"image/group_34738_x2.svg",25,25),
             SizedBox(height: 24),
          ],
        ),
      
    );
  }

  Widget storyImage(String imagePath) {
    return  Stack(
      children: [
        Positioned(
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
            
      height: 135.35,
      width:101.75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    ),
        ),
 
    
    
      ],
    );
    
  }

  Widget addStoryButton() {
    return DottedBorder(
  borderType: BorderType.RRect,
  color:  Color(0xFFD2D2D2),
  radius: Radius.circular(10),
  strokeWidth: 1,
 dashPattern: [8, 4],
  //padding: EdgeInsets.all(6),
  child: Container(
      height: 135.35,
      width:101.75,
      child: Center(
        child: Container(
         //margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
          padding:EdgeInsets.fromLTRB(1.34, 1.34, 1.34, 1.34),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0xFFD2D2D2)),
              borderRadius: BorderRadius.circular(8),
            ),),
          child:Icon(Icons.add, color: Colors.grey) ,
        )
        
      ),
    ),
    );
    
  }

  Widget sectionTitle(String title ) {
    return Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold));
  }

  Widget sectionItem(IconData icon, String title , String image ,double width, double height) {
    return Container(
      margin: EdgeInsets.fromLTRB(24, 0, 25, 5),
    child:Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
              //margin: const EdgeInsets.fromLTRB(0,0,17.9 ,1),
                width: width,
                height: height,
                child: SizedBox(
                 
                  child: SvgPicture.asset(image)
                  )
              ),
          SizedBox(width: 16),
          Text(title , style: GoogleFonts.spaceGrotesk(
            color: Colors.black,
            fontSize: 16,
            
            fontWeight: FontWeight.w700,
            height: 0.08,
          ),),
        ],
      ),
    )
    );
  }
}

class WaveClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(1.0, size.height - 60);
    double increment = size.width / 5;
    for (int i = 0; i < 5; i++) {
      double startX = increment * i;
      double controlPointX = startX + increment / 2;
      double endX = startX + increment;
      double controlPointY = (i % 2 == 0) ? size.height - 20 : size.height - 60;
      double endY = size.height - 40;
      path.quadraticBezierTo(controlPointX, controlPointY, endX, endY);
    }
    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}


class CustomShapeBorder extends ContinuousRectangleBorder {
  
  @override
 Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final double innerCircleRadius = 150.0;
    Path path = Path()
      ..lineTo(0, rect.height)
      ..quadraticBezierTo(
          rect.width / 5, rect.height, rect.width / 2.25, rect.height - 50.0)
      ..cubicTo(rect.width / 2 - 40, rect.height + innerCircleRadius - 40,
          rect.width / 2 + 40, rect.height + innerCircleRadius - 40,
          rect.width / 2 + 75, rect.height + 50)
      ..quadraticBezierTo(
          rect.width / 2 + (innerCircleRadius / 2) + 30,
          rect.height + 15,
          rect.width,
          rect.height)
      ..lineTo(rect.width, 0.0)
      ..close();
    return path;
   
  }
}
