import 'package:flutter/material.dart';



class Trang3 extends StatefulWidget {
  const Trang3({Key? key}) : super(key: key);

  @override
  State<Trang3> createState() => _Trang3State();
}

class _Trang3State extends State<Trang3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Ảnh nền
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/4.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Column nằm trên ảnh
          Positioned(
            top: 100, // Điều chỉnh vị trí của Column
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Khối 1
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxZXFMsJpvmzN8EvrZAalZgpjEUStZ0aAwPQ&usqp=CAU",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Hi, Rose',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(height: 30), // Khoảng cách giữa các khối

                // Khối 2
                const Text(
                  'What can\nwe serve you\ntoday?',
                  style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30), // Khoảng cách giữa các khối

                // Khối 3
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search for address, food...',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Icon(Icons.location_on, color: Colors.pink),
                    ],
                  ),
                ),
                const SizedBox(height: 10), // Khoảng cách giữa khối 3 và khối 4

                // Khối 4
                Container(
                  width: double.infinity, // Chiều dài bằng khối 3
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Trang3()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Search',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
