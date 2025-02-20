import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int san = 0;
  void koshuu() => setState(() {
        san++;
      });
  void kemituu() {
    setState(() {
      san--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("Flutter 3 sabak"),
        actions: [Icon(Icons.search)],
        //leading: Icon(Icons.menu),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            FlutterLogo(size: 130),
            const SizedBox(height: 20),
            Text('Bugunku sabak counter logo'),
            const SizedBox(height: 20),
            Card(
                color: Colors.deepOrange,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 50),
                  child: Text(
                    '$san',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                )),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: koshuu, child: Icon(Icons.add)),
                const SizedBox(width: 40),
                ElevatedButton(
                    onPressed: () {
                      kemituu();
                    },
                    child: Icon(Icons.remove)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
