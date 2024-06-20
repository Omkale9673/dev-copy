import 'package:bike_project/screens/editprofile.dart';
import 'package:bike_project/screens/home.dart';
import 'package:flutter/material.dart';

class ProfileModel {
  void dispose() {}
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late ProfileModel _model;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = ProfileModel();
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      key: scaffoldKey,
      body: Stack(
        children: [
          Align(
            alignment: const AlignmentDirectional(-2, -1.03),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/images/Group.png',
                width: screenWidth * 0.8, // 80% of screen width
                height: screenHeight * 0.3, // 25% of screen height
                fit: BoxFit.contain,
              ),
            ),
          ),
          const Align(
            alignment: AlignmentDirectional(-0.5, -0.83),
            child: Text(
              'Profile',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(-0.8, -0.85),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 24,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          Positioned(
            top: screenHeight * 0.5,
            left: screenWidth * 0.1,
            right: screenWidth * 0.1,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const EditProfilePage(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      const begin = Offset(-1.0, 0.0);
                      const end = Offset.zero;
                      const curve = Curves.ease;

                      var tween = Tween(begin: begin, end: end)
                          .chain(CurveTween(curve: curve));
                      var offsetAnimation = animation.drive(tween);

                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                  ),
                );
              },
              child: const Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Edit Profile',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      letterSpacing: 0,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.55,
            left: screenWidth * 0.1,
            right: screenWidth * 0.1,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const EditProfilePage(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      const begin = Offset(-1.0, 0.0);
                      const end = Offset.zero;
                      const curve = Curves.ease;

                      var tween = Tween(begin: begin, end: end)
                          .chain(CurveTween(curve: curve));
                      var offsetAnimation = animation.drive(tween);

                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                  ),
                );
              },
              child: Container(
                height: 27,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'View Document',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 20,
                        letterSpacing: 0,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(-0.77, 0.25),
            child: GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Are you sure you want to logout?',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(
                                        0xFF202832), // Adjust gradient colors as needed
                                    Color(
                                        0xFF105B9C), // Adjust gradient colors as needed
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pop(); // Close the dialog
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors
                                      .transparent, // Set transparent color for ElevatedButton
                                  elevation: 0, // Remove elevation
                                ),
                                child: const Text(
                                  'Cancel',
                                  style: TextStyle(
                                    color: Colors
                                        .white, // Text color of Cancel button
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(
                                        0xFF202832), // Adjust gradient colors as needed
                                    Color(
                                        0xFF105B9C), // Adjust gradient colors as needed
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  // Perform logout action here
                                  Navigator.of(context)
                                      .pop(); // Close the dialog
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors
                                      .transparent, // Set transparent color for ElevatedButton
                                  elevation: 0, // Remove elevation
                                ),
                                child: const Text(
                                  'Logout',
                                  style: TextStyle(
                                    color: Colors
                                        .white, // Text color of Logout button
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                );
              },
              child: Text(
                'Logout',
                style: Theme.of(context).textTheme.bodyLarge!.merge(
                      const TextStyle(
                        fontFamily: 'Montserrat',
                        color: Color(0xFFFF693B),
                        fontSize: 19,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(2, -0.83),
            child: GestureDetector(
              onTap: () {},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/sos.png',
                  width: screenWidth * 0.65,
                  height: screenHeight * 0.04,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.04, 0.94),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHome()),
                );
              },
              child: Image.asset(
                'assets/images/home.png',
                width: 32.0, // Match container size
                height: 32.0, // Match container size
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
