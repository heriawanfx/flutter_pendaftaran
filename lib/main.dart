import 'package:flutter/material.dart';
import 'finish.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Pendaftaran',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new Pendaftaran(),
    );
  }
}

class Pendaftaran extends StatefulWidget {
  @override
  _PendaftaranState createState() => _PendaftaranState();
}

class _PendaftaranState extends State<Pendaftaran> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Pendaftaran")),
        body: SingleChildScrollView(
          //agar tidak ada bacaan overlapping
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Form(
              key: _formKey, //mengirim key
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.stretch, //matchparent-kan button
                children: <Widget>[
                  TextFormField(
                    validator: (a) {
                      if (a.isEmpty) {
                        return "Please fill this field";
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(labelText: "Email Address"),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(labelText: "Full Name"),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: "Phone Number"),
                  ),
                  TextFormField(
                    validator: (a) {
                      if (a.isEmpty) {
                        return "Please fill this field";
                      }
                    },
                    keyboardType: TextInputType.text,
                    obscureText: true, //enkripsi password
                    decoration: InputDecoration(labelText: "Password"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                  ),
                  RaisedButton(
                    color: Colors.red,
                    textColor: Colors.white,
                    onPressed: () {
                      //action
                      if (_formKey.currentState.validate()) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => new Finish()));
                      }

                      Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text('Processing Data')));
                    },
                    child: Text("Submit"),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
