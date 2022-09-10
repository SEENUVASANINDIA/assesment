import 'package:assesment/screens/signin_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('login'),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CompanyInfo()),
                  );
                },
                icon: const Icon(Icons.auto_stories_sharp)),
          ],
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CompanyInfo()),
                  );
                },
                child: const Text('COMPANY INFO')),
            const SizedBox(height: 30.0),
            ElevatedButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut().then((value) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInScreen()));
                  });
                },
                child: const Text('Logout'))
          ],
        )),
      ),
    );
  }
}

class CompanyInfo extends StatefulWidget {
  const CompanyInfo({Key? key}) : super(key: key);

  @override
  State<CompanyInfo> createState() => _CompanyInfoState();
}

class _CompanyInfoState extends State<CompanyInfo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('COMPANY INFO'),
          centerTitle: true,
          backgroundColor: Colors.purpleAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('''
         
         company:Geeksynergy Technologies Pvt Ltd

         Addrss:Sanjaynagar,Bengalure-56

         Phone:xxxxxxxx09

         Email:xxxxxx@gmail.com


''')
            ],
          ),
        ),
      ),
    );
  }
}
