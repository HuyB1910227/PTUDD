import 'package:flutter/material.dart';
import 'package:hukotravel/ui/auth/auth_manager.dart';
import 'package:hukotravel/ui/profile/about.dart';
import 'package:hukotravel/ui/profile/question.dart';
import 'package:hukotravel/ui/shared/circle_image.dart';
import 'package:provider/provider.dart';

class ProfileOverviewScreen extends StatelessWidget {
  const ProfileOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hồ sơ cá nhân'),
        ),
        body: ListView(
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
                  color: Color.fromARGB(255, 237, 128, 161),
                  child: Column(children: <Widget>[
                    const CircleImage(
                      imageProvider: AssetImage('assets/hanhtrinh.jpg'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Huko Travel xin chào quý khách!",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    
                    SizedBox(
                      child: ElevatedButton(
                        onPressed: () {
                          context.read<AuthManager>().logout();
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 255, 255, 255)),
                        ),
                        child: const Text(
                          'Đăng xuất',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.red),
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
                  children: <Widget>[
                    const Divider(),
                    const ListTile(
                      leading: Icon(Icons.phone),
                      title: Text("Trung tâm hỗ trợ"),
                      subtitle: Text("08:00 - 22:00 (24/7)"),
                    ),
                    const Divider(),
                    const ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Văn phòng đại diện"),
                      subtitle: Text("221/12, Long Hòa, Bình Thủy, TP. Cần Thơ"),
                    ),
                    const Divider(),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(About.routeName);
                        print("about");
                      },
                      child: const ListTile(
                        leading: Icon(Icons.info),
                        title: Text("Về HuKo Travel"),
                            
                      ),
                    ),
                    const Divider(),
                    GestureDetector(
                      child: ListTile(
                        onTap: () {
                        Navigator.of(context).pushNamed(Question.routeName);
                      },
                        leading: const Icon(Icons.question_answer),
                        title: const Text("Câu hỏi thường gặp"),
                        
                      ),
                    ),
                    const Divider(),
                    
                    const ListTile(
                      leading: Icon(Icons.comment),
                      title: Text("Đánh giá ứng dụng"),
                      // subtitle: Text("08:00 - 22:00 (24/7)"),
                    ),
                    const Divider(),
                    const Text(
                      "Phiên bản 1.12.0",
                      style: TextStyle(
                        color: Color.fromARGB(255, 108, 108, 108),
                      ),
                    ),
                    const Divider(),
                  ],
                ))
          ],
        ));
  }
}
