import 'package:flutter/material.dart';

void main() => runApp(MyNewApp());

class MyNewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: AppBody());
  }
}

class AppBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => null,
        ),
        title: Text('New App'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => null,
          ),
        ],
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: MediaQuery.of(context).size.height * 0.10,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                elevation: 10,
                color: Colors.greenAccent,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://images.unsplash.com/photo-1488379851933-79d1398a112b?ixlib=rb-1.2.1&auto=format&fit=crop&w=752&q=80'),
                      fit: BoxFit.cover
                    )
                  ),
                  height: 300.0,
                  width: MediaQuery.of(context).size.width * 0.7 - 20,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5.0),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.11,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                elevation: 10,
                color: Colors.brown[600],
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://images.unsplash.com/photo-1535498730771-e735b998cd64?ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'),
                      fit: BoxFit.cover
                    )
                  ),
                  height: 300.0,
                  width: MediaQuery.of(context).size.width * 0.7 - 10,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5.0),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.12,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                elevation: 100,
                color: Colors.indigo,
                child: Container(
                   decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://images.unsplash.com/photo-1576165768014-18add4ea6716?ixlib=rb-1.2.1&auto=format&fit=crop&w=376&q=80'),
                      fit: BoxFit.cover
                    )
                  ),
                  height: 300.0,
                  width: MediaQuery.of(context).size.width * 0.7,
                  padding: EdgeInsets.all(5.0)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
