import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://images.unsplash.com/photo-1554261197-de743c7e0ad3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60'),
              
              fit: BoxFit.cover
        )
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.all(Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[600]!,
                    offset: Offset(4,4),
                    blurRadius: 10,
                    spreadRadius: 1
                  ),
                  BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4 ,-4),
                      blurRadius: 10,
                      spreadRadius: 1
                  ),
                ]
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [Colors.white12,Colors.white54]
                ),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
