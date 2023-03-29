import 'package:flutter/material.dart';
import 'package:hukotravel/ui/shared/circle_image.dart';

class ProfileOverviewScreen extends StatelessWidget {
  const ProfileOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hồ sơ cá nhân'),
        ),
        body: Column(
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10.0),
                  width: double.infinity,
                  color: Color.fromARGB(255, 241, 137, 169),
                  child: Column(children: <Widget>[
                    const CircleImage(
                      imageProvider: AssetImage('assets/hanhtrinh.jpg'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Xin chào!",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Đỗ Thái Gia Huy",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      // width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          print("Đã click đăng xuất");
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 243, 4, 4)),
                        ),
                        child: const Text(
                          'Đăng xuất',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: const <Widget>[
                    Divider(),
                    ListTile(
                      trailing: Icon(Icons.abc),
                      title: Text("Đỗ Thái Gia Huy"),
                    ),
                    Divider(),
                    ListTile(
                      trailing: Icon(Icons.phone),
                      title: Text("0932988029"),
                    ),
                    Divider(),
                    ListTile(
                      trailing: Icon(Icons.email),
                      title: Text("giahuydo@gmail.com"),
                    ),
                  ],
                ))
          ],
        ));
  }
}
