import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  static const routeName = '/profile/question';
  const Question({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Câu hỏi thường gặp'),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
          Card(
            shadowColor: Colors.black,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        "Giá tour bao gồm ? ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                          color: Color.fromARGB(255, 0, 50, 91),
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "Năm 2006, Khu dự trữ sinh quyển ven biển và biển đảo Kiên Giang, bao gồm cả huyện Phú Quốc được UNESCO công nhận ",
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Card(
            shadowColor: Colors.black,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        "Giá tour không bao gồm ? ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                          color: Color.fromARGB(255, 0, 50, 91),
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "Năm 2006, Khu dự trữ sinh quyển ven biển và biển đảo Kiên Giang, bao gồm cả huyện Phú Quốc được UNESCO công nhận",
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Card(
            shadowColor: Colors.black,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        "Điều kiện thanh toán ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                          color: Color.fromARGB(255, 0, 50, 91),
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "Năm 2006, Khu dự trữ sinh quyển ven biển và biển đảo Kiên Giang, bao gồm cả huyện Phú Quốc được UNESCO công nhận",
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Card(
            shadowColor: Colors.black,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        "Các điều kiện đăng ký tour ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                          color: Color.fromARGB(255, 0, 50, 91),
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "Năm 2006, Khu dự trữ sinh quyển ven biển và biển đảo Kiên Giang, bao gồm cả huyện Phú Quốc được UNESCO công nhận",
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
