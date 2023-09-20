// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media_flutter/login/login_view.dart';
import 'package:social_media_flutter/mtview/maintenence_screen.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Profile", style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: const Image(
                      image: AssetImage("assets/icon/spiderman.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Reo Rizki Ananda",
                style: GoogleFonts.poppins(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "reorizki07@gmail.com",
                style: TextStyle(
                  fontSize: 10.0,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                width: 250,
                height: 36,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 255, 0),
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(64.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MtView()),
                    );
                  },
                  child: const Text(
                    "Edit Profile",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              ExSettings(
                icon: Icons.settings,
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MtView()),
                  );
                },
                title: "Settings",
              ),
              const SizedBox(
                height: 15.0,
              ),
              ExSettings(
                icon: Icons.wallet,
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MtView()),
                  );
                },
                title: "Billing Details",
              ),
              const SizedBox(
                height: 15.0,
              ),
              ExSettings(
                icon: Icons.supervised_user_circle_sharp,
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MtView()),
                  );
                },
                title: "User Management",
              ),
              const SizedBox(
                height: 15.0,
              ),
              ExSettings(
                icon: Icons.info,
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MtView()),
                  );
                },
                title: "Information",
              ),
              const SizedBox(
                height: 15.0,
              ),
              ExSettings(
                icon: Icons.logout,
                onPress: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginView()),
                  );
                },
                title: "Logout",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ExSettings extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPress;
  const ExSettings({
    required this.onPress,
    required this.title,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.blue[100]),
          child: Icon(
            icon,
          )),
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
