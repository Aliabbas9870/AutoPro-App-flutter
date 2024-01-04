import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class OperationPage extends StatefulWidget {
  const OperationPage({super.key});

  @override
  State<OperationPage> createState() => _OperationPageState();
}

class _OperationPageState extends State<OperationPage> {
  final CollectionReference _items =
      FirebaseFirestore.instance.collection('items');
  TextEditingController nameControl = TextEditingController();
  TextEditingController numberControl = TextEditingController();
  TextEditingController cnControl = TextEditingController();
  Future<void> _create([DocumentSnapshot? documentSnapshot]) async {
    await showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext ctx) {
          return Padding(
            padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: MediaQuery.of(ctx).viewInsets.bottom + 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Text("Create Your items"),
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: 'Name'),
                  controller: nameControl,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: numberControl,
                  decoration: InputDecoration(labelText: 'Number'),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'cn'),
                  controller: cnControl,
                ),
                ElevatedButton(
                    onPressed: () async {
                      String name = nameControl.text;
                      final int? cn = int.tryParse(cnControl.text);
                      final int? number = int.tryParse(numberControl.text);
                      if (name != null) {
                        await _items
                            .add({"name": name, 'number': number, 'cn': cn});
                        nameControl.text = '';
                        numberControl.text = '';
                        cnControl.text = '';
                        Navigator.of(context).pop();
                      }
                    },
                    child: Text('Add  new Items'))
              ],
            ),
          );
        });
  }

  /// add items  ///////////
  ///
  ///

//update items ///
  ///
  ///
  ///

  Future<void> _update([DocumentSnapshot? documentSnapshot]) async {
    if (documentSnapshot != null) {
      nameControl.text = documentSnapshot['name'];
      numberControl.text = documentSnapshot['number'].toString();
      cnControl.text = documentSnapshot['cn'].toString();
    }


     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("You have successful update items"),
    ));
    await showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext ctx) {
          return Padding(
            padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: MediaQuery.of(ctx).viewInsets.bottom + 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Text("Update Your items"),
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: 'Name'),
                  controller: nameControl,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: numberControl,
                  decoration: InputDecoration(labelText: 'Number'),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'cn'),
                  controller: cnControl,
                ),
                ElevatedButton(
                    onPressed: () async {
                      String name = nameControl.text;
                      final int? cn = int.tryParse(cnControl.text);
                      final int? number = int.tryParse(numberControl.text);
                      if (name != null) {
                        await _items
                            .doc(documentSnapshot!.id)
                            .update({"name": name, 'number': number, 'cn': cn});
                        nameControl.text = '';
                        numberControl.text = '';
                        cnControl.text = '';
                        Navigator.of(context).pop();
                      }
                    },
                    child: Text('Update  new Items'))
              ],
            ),
          );
        });
  }
//////////////////
  ///
  ///
  ///
  ///

  //delete operate
  ////
  ///
  ///
  ///
  ///
  Future<void> _delte(String productId) async {
    await _items.doc(productId).delete();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("You have successful delete items"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Operation"),
      ),
      body: StreamBuilder(
          stream: _items.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
            if (streamSnapshot.hasData) {
              return ListView.builder(
                  itemCount: streamSnapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    final DocumentSnapshot documentSnapshot =
                        streamSnapshot.data!.docs[index];
                    return Card(
                      color: Colors.greenAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22)),
                      child: ListTile(
                        title: Text(documentSnapshot['name'],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue)),
                        subtitle: Text(documentSnapshot['number'].toString(),
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        leading: CircleAvatar(
                            child: Text(documentSnapshot['cn'].toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            radius: 15,
                            backgroundColor: Colors.black),
                        trailing: SizedBox(
                          width: 100,
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    _update(documentSnapshot);
                                  },
                                  icon: Icon(Icons.edit)),
                              IconButton(
                                  onPressed: () {
                                    _delte(documentSnapshot.id);
                                  },
                                  icon: Icon(Icons.delete)),
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            }
            return Center(
              child: CircularProgressIndicator(
                  backgroundColor: Colors.amberAccent),
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          _create();
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
