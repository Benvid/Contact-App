// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:contact_app/my_contact.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ContactsView()));
              }),
          elevation: 0,
          title: Text('Contacts',
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(fontSize: 24, color: Colors.black)),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ))
          ],
        ),
        body: ListView(children: [
          Center(
            child: CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage(
                  'https://th.bing.com/th/id/OIP.vbDel9Uv1L5vGYaOnwzP7AAAAA?pid=ImgDet&rs=1'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "Ben Dyson",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
              child: Text('Adisadel, Cape Coast',
                  style: TextStyle(
                    fontSize: 12,
                  ))),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Color(0xff9aadbe),
            child: Column(children: [
              ListTile(
                tileColor: Color(0xff9aadbe),
                title: Text('Mobile'),
                subtitle: Text('0203548656',
                    style: TextStyle(color: Color(0xff333333))),
                trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    radius: 22,
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.sms),
                            color: Colors.black)),
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.grey[200],
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.phone),
                            color: Colors.black)),
                  )
                ]),
              ),
              ListTile(
                title: Text('Email'),
                subtitle: Text('tateRay@ghmail.com',
                    style: TextStyle(color: Color(0xff333333))),
                trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    radius: 22,
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.email),
                            color: Colors.black)),
                  ),
                ]),
              ),
              Card(
                  elevation: 0,
                  child: ListTile(
                    tileColor: Color(0xff9aadbe),
                    title: Text('Group'),
                    subtitle: Text('Uni Friends',
                        style: TextStyle(color: Color(0xff333333))),
                  )),
              Container(
                padding: EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width / 1,
                color: Colors.white,
                child: Text(
                  'Account Linked',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              ListTile(
                title: Text('Telegram'),
                trailing: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  radius: 19,
                  child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image.asset('assets/telegram.png')),
                ),
              ),
              ListTile(
                  tileColor: Colors.grey[50],
                  title: Text('WhatsApp'),
                  trailing: CircleAvatar(radius:19,
                    backgroundColor: Colors.grey[200],
          
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Center(child: Image.asset('assets/whatsapp.png'))),
                  )),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'More Options',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
              Container(
                color: const Color(0xff9AADBE),
                child: Column(
                  children: const [
                    ListTile(
                      title: Text(
                        'Share Contact',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'QR Code',
                        style: TextStyle(fontSize: 18),
                      ),
                    )
                  ],
                ),
              )
            ]),
          ),
        ]));
  }
}
        
  

  
        
                    
            



// class ContactDetail extends StatelessWidget {
//   ContactDetail(
//       {required this.userContact,
//       required this.imageUrl,
//       required this.userName});
//   final String imageUrl;
//   final String userName;
//   final int userContact;
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: ListTile(
//         leading: CircleAvatar(
//           backgroundImage: NetworkImage(imageUrl),
//         ),
//         title: Text(userName),
//         subtitle: Text(userContact.toString()),
//         trailing: Icon(Icons.more_horiz),
//          onPressed: () {
  