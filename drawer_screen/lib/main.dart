import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  final appTitle = 'Drawer Demo';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage (title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({Key key, this.title}) :super(key : key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(title: Text(title),),
      body: Center(
        child: Text('My page!'),
      ),
      drawer: Drawer(
        child: ListView(
          // Remove any padding from the ListView
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),     
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage('assets/images/img01.png'),
                ),
              ),
            ),
            Text('Ms Loooca'),   
            ListTile(
              leading: Icon(Icons.train),
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Item 43'),
              onTap: () {          
                Navigator.pop(context);
              },
            )
          ],
        ),

      ),
      
    );
  }
}


Widget _Drawer1(context) {
  return Drawer(
    child: ListView(
      // Remove any padding from the ListView
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Text('Drawer Header'),     
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage('assets/images/img01.png'),
            ),
          ),

        ),

        Text('Ms Loooca'),   

        ListTile(
          leading: Icon(Icons.train),
          title: Text('Item 1'),
          onTap: () {
            // Update the state of the app
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Item 2'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.book),
          title: Text('Item 3'),
          onTap: () {
            Navigator.pop(context);
          },
        )
      ],
    ),

  );
}

void _showDialog(context) {
    showDialog(
    //  context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('afsafaf'),
        content: Text('3333333333afsafaf'),
        actions: <Widget>[
          FlatButton(child: Text('close'),
          onPressed: () {
            Navigator.of(context).pop();
          },)
        ]
      
      );
    },
  );
}



/* Função construi um AlertDialog*/
void buildAlertDialog(context, String title, String content) {
 showDialog( context: context,
     builder: (context) {
         print('title: '+title);
         print('content: '+content);
       return AlertDialog(
         title: Text(title),
         content: Text(content),
         actions: <Widget>[
           FlatButton(
             child: Text('Sair'),
             onPressed: () {
               Navigator.pop(context);
               Navigator.pop(context);
             },
           ),
           FlatButton(
             child: Text('Continuar'),
             onPressed: () {
               Navigator.pop(context);
             }, ), ], ); });
}
