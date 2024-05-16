import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:projectuts5/components/about_us.dart';
import 'package:projectuts5/pages/landingpage.dart';
import 'package:projectuts5/pages/loginpage.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isDarkModeEnabled = false;
  bool wifiOn = false;
  bool _showLogoutDialog = false;
  String selectedLanguage = 'Indonesian';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[300],
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // BAGIAN PROFILE
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 2, horizontal: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Profile
                                CircleAvatar(
                                  radius: 40,
                                  backgroundImage:
                                      AssetImage('assets/img3.jpg'),
                                  // Ganti dengan URL gambar profil Anda
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Kyedae',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 23,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  'Kyedae@gmail.com',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 18),
                                ),
                                SizedBox(height: 20),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 80),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 59, 190, 230),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    padding: const EdgeInsets.all(15),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Icon(
                                              Icons.edit_document,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            'Edit Profile',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 10.0),
                                        child: Icon(
                                          Icons.bookmark,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Text(
                                        'My Membership',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  Transform.rotate(
                                    angle: 180 * math.pi / 180,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.arrow_back_ios,
                                      ),
                                      onPressed: null,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 10.0),
                                        child: Icon(
                                          Icons.favorite,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Text(
                                        'My Favorite Course ',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  Transform.rotate(
                                    angle: 180 * math.pi / 180,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.arrow_back_ios,
                                      ),
                                      onPressed: null,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //preference
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: InkWell(
                                onTap: () {
                                  // Show the dropdown
                                  // You can use a state variable to control the visibility of the dropdown
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(right: 10.0),
                                          child: Icon(
                                            Icons.language,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          'Language',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                    DropdownButton<String>(
                                      value: selectedLanguage,
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          selectedLanguage = newValue!;
                                        });
                                      },
                                      items: <String>[
                                        'Indonesian',
                                        'Japanese',
                                        'English',
                                      ]
                                          .map<DropdownMenuItem<String>>(
                                            (String value) =>
                                                DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            ),
                                          )
                                          .toList(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 10.0),
                                        child: Icon(
                                          Icons.dark_mode,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Text(
                                        'Dark Mode',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  Switch(
                                    value: isDarkModeEnabled,
                                    onChanged: (value) {
                                      setState(() {
                                        isDarkModeEnabled = value;
                                      });
                                    },
                                    activeColor: Colors.blueAccent,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 10.0),
                                        child: Icon(
                                          Icons.wifi,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Text(
                                        'Only Donwload In Wifi',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  Switch(
                                    value: wifiOn,
                                    onChanged: (value) {
                                      setState(() {
                                        wifiOn = value;
                                      });
                                    },
                                    activeColor: Colors.blueAccent,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(right: 10.0),
                                          child: Icon(
                                            Icons.person_outlined,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          'About Us',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    Transform.rotate(
                                      angle: 180 * math.pi / 180,
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.arrow_back_ios,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    AboutUs()),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 10.0),
                                        child: Icon(
                                          Icons.logout,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Text(
                                        'Log Out',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  Transform.rotate(
                                    angle: 180 * math.pi / 180,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.arrow_back_ios,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _showLogoutDialog = true;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            if (_showLogoutDialog) // Menampilkan dialog jika _showLogoutDialog bernilai true
                              Container(
                                color: Colors.white,
                                alignment: Alignment.center,
                                child: AlertDialog(
                                  content: Text('Apakah Anda ingin Logout?'),
                                  actions: [
                                    TextButton(
                                      child: Text('Cancel'),
                                      onPressed: () {
                                        setState(() {
                                          _showLogoutDialog = false;
                                        });
                                      },
                                    ),
                                    TextButton(
                                      child: Text('Logout'),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  LandingPage()), // Ganti dengan halaman tujuan setelah Logout
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
