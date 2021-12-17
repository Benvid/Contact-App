// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'contact_info.dart';

class ContactsView extends StatelessWidget {
  const ContactsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('My Contacts',
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(fontSize: 22, color: Colors.black)),
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(backgroundImage: NetworkImage('https://www.psychologicalscience.org/redesign/wp-content/uploads/2016/08/PAFF_022619_facescrowd-609x419.jpg'),
             ) )
          ],
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: TextField(
                  decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                hintText: 'search by name or number',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                prefixIcon: Icon(Icons.search),
              )),
            ),
          ),
        ),

        //Body here
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(left:10),
            child: Text(
              'Recent',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          ContactCard(
              userContact: '0203548656',
              imageUrl: 'https://th.bing.com/th/id/OIP.vbDel9Uv1L5vGYaOnwzP7AAAAA?pid=ImgDet&rs=1',
              userName: 'Ben Dyson',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ContactInfo()));
              }),
          ContactCard(
              userContact: '0245665317',
              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKtF4rzlxsItj-NDp1fa-AQmw8MHRrQ0ZuBg&usqp=CAU',
              userName: 'Steven Yeboah',
              onTap: () {}),
          ContactCard(
              userName: 'Arcane Mance',
              userContact: '0555611957',
              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTzBK5x7TyqdH-C7VLktPWmtiwXTC505imMw&usqp=CAU',
              onTap: () {}),
          Divider(
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text('Contacts'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Text('A', textAlign: TextAlign.end),
          ),
          ContactCard(
              userContact: '0555611957',
              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTzBK5x7TyqdH-C7VLktPWmtiwXTC505imMw&usqp=CAU',
              userName: 'Arcane Mance',
              onTap: () {}),
          ContactCard(
              userContact: '0248825116',
              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtlN4V4qexk5fDB2LfS-jbnTaF_cMxVCVTiA&usqp=CAU',
              userName: 'Alex Rayner',
              onTap: () {}),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Text('B', textAlign: TextAlign.end),
          ),
          ContactCard(
              userContact: '0508321356',
              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0xGW374hEU-XswtB-ZSHxC0xBOXfrIrB0WQ&usqp=CAU',
              userName: 'Banny Acheampong',
              onTap: () {}),
          ContactCard(
            userContact: '0203548656',
            imageUrl: 'https://th.bing.com/th/id/OIP.vbDel9Uv1L5vGYaOnwzP7AAAAA?pid=ImgDet&rs=1',
            userName: 'Ben Dyson',
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ContactInfo()));
            },
          )
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 26,
            child: CircleAvatar(radius: 22, child: Icon(Icons.add)),
          ),
        )

        //
        //
        //
        );
  }
}

class ContactCard extends StatelessWidget {
  ContactCard({
    required this.userContact,
    required this.imageUrl,
    required this.userName,
    required this.onTap,
  });
  final String imageUrl;
  final String userName;
  final String userContact;
  Function()? onTap;

  
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
          ),
          title: Text(userName),
          subtitle: Text(userContact.toString()),
          trailing: Icon(Icons.more_horiz),
          onTap: onTap
          ),
    );
  }
}
