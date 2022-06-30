import 'package:flutter/material.dart';

class AddMemoPage extends StatefulWidget {
  const AddMemoPage({Key? key}) : super(key: key);

  @override
  State<AddMemoPage> createState() => _AddMemoPageState();
}

class _AddMemoPageState extends State<AddMemoPage> {
  Future<void> addMemo() async{
    print('call addMemo()');
    // var collection = FirebaseFirestore.instance.collection('memo');
    // await collection.add({
    // 'title':titleController.text,
    // 'detail':detailController.text,
    // 'created_date':DateTime.now()
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('メモを追加'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text('タイトル'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey)
              ),
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 10)
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Text('メモ内容'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey)
              ),
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 10)
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              child: Text('追加'),
              onPressed: () async {
                await addMemo();
                Navigator.pop(context);
              }),
          )
        ],
      )
    );
  }
}
