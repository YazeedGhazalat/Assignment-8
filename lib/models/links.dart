import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

final Uri Facebook_url = Uri.parse('https://www.facebook.com/yazeed.ghazalat');
final Uri Instagram_url =
    Uri.parse('https://www.instagram.com/yazeed_ghazalat/');
final Uri LinkedIN_url =
    Uri.parse('https://www.linkedin.com/in/yazeed-ghazalat-205111161');
final Uri ourLocation_url = Uri.parse('https://goo.gl/maps/CnFADFJpFDvj4Azt6');
final Uri GitHub_url = Uri.parse('https://github.com/YazeedGhazalat');
final Uri Email_url = Uri.parse('mailto:yazeedghazalat@gmail.com');
final Uri Phone_url = Uri.parse('tel:+962780785310');
Future<void> Facebook() async {
  if (!await launchUrl(Facebook_url)) {
    throw 'Could not launch $Facebook_url';
  }
}

Future<void> GitHub() async {
  if (!await launchUrl(GitHub_url)) {
    throw 'Could not launch $GitHub_url';
  }
}

Future<void> Email() async {
  if (!await launchUrl(Email_url)) {
    throw 'Could not launch $Email_url';
  }
}

Future<void> Phone() async {
  if (!await launchUrl(Phone_url)) {
    throw 'Could not launch $Phone_url';
  }
}

Future<void> Instagram() async {
  if (!await launchUrl(Instagram_url)) {
    throw 'Could not launch $Instagram_url';
  }
}

Future<void> LinkedIN() async {
  if (!await launchUrl(LinkedIN_url)) {
    throw 'Could not launch $LinkedIN_url';
  }
}

Future<void> ourLocation() async {
  if (!await launchUrl(ourLocation_url)) {
    throw 'Could not launch $ourLocation_url';
  }
}

// ignore: must_be_immutable
class URLClass extends StatelessWidget {
  URLClass(
      {required this.myFunction,
      required this.myPlatformIcon,
      required this.myPlatformSubTitle,
      required this.myPlatformTitle});
  String? myPlatformTitle;
  String? myPlatformSubTitle;
  IconData? myPlatformIcon;
  Function()? myFunction;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myFunction,
      child: Container(
        child: ListTile(
          isThreeLine: true,
          title: Text(
            "$myPlatformTitle",
            style: TextStyle(
              fontFamily: "RobotoSlab",
              color: Colors.deepOrange,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            "$myPlatformSubTitle",
            style: TextStyle(
              fontSize: 18,
              fontFamily: "RobotoSlab",
            ),
          ),
          leading: Icon(
            myPlatformIcon,
            size: 40,
          ),
        ),
      ),
    );
  }
}
