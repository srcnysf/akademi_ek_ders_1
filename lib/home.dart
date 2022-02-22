import 'package:akademi_ek_ders_1/widgets/jobs_item.dart';
import 'package:flutter/material.dart';

import 'package:akademi_ek_ders_1/widgets/my_lovely_button.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  void initState() {
    _counter = 10;
    super.initState();
  }

  void _incrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Container(
                      height: 100,
                      width: 100,
                      child: const CircleAvatar(
                        backgroundImage: AssetImage("assets/grass.jpeg"),
                      )),
                  const SizedBox(width: 70),
                  const Expanded(
                    child: Text(
                      'Sercan Yusuf',
                      maxLines: 2,
                      style: TextStyle(
                        backgroundColor: Colors.blue,
                        decoration: TextDecoration.underline,
                        fontSize: 26,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              const Text('Hakkımda:',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  )),
              SizedBox(
                height: 20,
              ),
              const Text(
                'Flutter Evangelist @SwanBitcoin💙 \n#Bitcoin \nDigital Nomad 🌎 \nPublic Speaker 🎙 \nOrganizer @gdgistanbul',
              ),
              SizedBox(
                height: 20,
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  JobsItem(
                    company: "Swan Bitcoin",
                    desc: 'We are working on an bitcoin purchase app',
                    title: 'Flutter Dev',
                  ),
                  JobsItem(
                    company: "GAIN",
                    desc: 'We are working on an media app',
                    title: 'Flutter Dev',
                  ),
                  JobsItem(
                    company: "LeanScale",
                    desc: 'We are working on many apps',
                    title: 'Flutter Dev',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyLovelyButton(
                    color: Colors.blue,
                    onPressed: () {
                      setState(() {
                        launch(
                            "mailto:sercanyus@gmail.com?subject=Hello Sercan&body=What's Up ?");
                      });
                    },
                    text: "Mail Me",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
