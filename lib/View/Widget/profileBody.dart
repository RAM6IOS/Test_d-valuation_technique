import 'package:flutter/material.dart';
import 'package:test_devalution_technique/View/Widget/Story.dart';
import 'package:test_devalution_technique/View/Widget/customTitle.dart';
import 'package:test_devalution_technique/View/Widget/haderBar.dart';
import 'package:test_devalution_technique/View/Widget/sectionItem.dart';
import 'package:test_devalution_technique/View/Widget/userInformation.dart';


class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const Stack(
            children:[
            Positioned(
              // User Information =================================================================
              // Start =================================================================
      child: UserInformation()
      ),
      // end =================================================================
      // header =================================================================
        HaderBar()
            ]
            ),
            // stories  =================================================================
            //start ===
          CustomTitle( titel: 'My Story',),
          Story(),
          // end =================================================================
          
          //list item =================================================================
          //start ===
        CustomTitle( titel: 'About me',),
            SectionItem( icon:Icons.info, title:'Personal informations' ,image: "image/group_34730_x2.svg" , height:20 ,width :20),
            SectionItem(icon:Icons.person, title:'My identity',image:"image/group_34726_x2.svg" ,height:20,width:20),
            SectionItem(icon:Icons.verified_user, title:'Sendyo embassador',image:"image/group_34727_x2.svg" , height:20 ,width:20),
            SectionItem(icon:Icons.security, title:'Account and security',image:"image/group_34728_x2.svg" , height:20 ,width:20),
            SizedBox(height: 24),
        CustomTitle( titel: 'Payments',),
            SectionItem(icon:Icons.transfer_within_a_station, title:'Transfer options' ,image:"image/group_34729_x2.svg" ,width:22 ,height: 22),
            SectionItem(icon:Icons.payment, title:'Payment methods',image:"image/group_34733_x2.svg" ,width:20 , height:20),
            SectionItem(icon:Icons.account_balance_wallet, title:'Wallet',image:"image/group_34731_x2.svg" ,width:17.87,height:20) ,
            SectionItem(icon:Icons.history, title:'Transaction history',image:"image/group_34735_x2.svg", width:20 ,height:20),
            SizedBox(height: 24),
        CustomTitle( titel: 'More',),
            SectionItem(icon:Icons.notifications, title:'Notifications',image:"image/group_34739_x2.svg" ,width:20,height:20),
            SectionItem(icon:Icons.help, title:'FAQ and help',image:"image/group_34736_x2.svg" ,width:20,height:20),
            SectionItem(icon:Icons.description, title:'Terms and conditions',image:"image/group_34737_x2.svg" ,width:20 ,height:20),
            SectionItem(icon:Icons.logout, title:'Logout',image:"image/group_34738_x2.svg",width:25,height:25),
            SizedBox(height: 24),
             // end =================================================================
          ],
        ),
      
    );
  }
  
  
}
