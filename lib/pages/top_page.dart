import 'package:flutter/material.dart';
import 'package:udemy_flutter_memo_app/pages/add_memo_page.dart';
import 'package:udemy_flutter_memo_app/pages/memo_page.dart';

import '../model/memo.dart';

class TopPage extends StatefulWidget {
  const TopPage({super.key, required this.title});

  final String title;

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  // QueryDocumentSnapshot memos;

  List<Memo> memoList = [];

  Future<void> getMemo() async {
    // var snapshot = FirebaseFirestore.instance.collection('memo').get();
    // var docs = snapshot.docs;
    // docs.forEach((doc){
    //   memoList.add(Memo(
    //     title:doc.data()['title'],
    //     detail:doc.data()['detail'],
    //   ));
    // });
    Memo memo = Memo(
        title: 'testtitle',
        detail: 'testdetail',
        createdDate: DateTime.now(),
        updatedDate: DateTime.now());
    memoList.add(memo);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter meo'),
      ),
      body: ListView.builder(
          itemCount: memoList.length,
          itemBuilder: (context, index) {
            return ListTile(
              // title: Text(memoList[index].title),
              title: Text('テスト'),
              onTap: () {
                Memo memo = Memo(
                    title: 'title',
                    detail: 'detail',
                    createdDate: DateTime.now(),
                    updatedDate: DateTime.now());
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MemoPage(memo)));
              },
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('page 遷移');
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddMemoPage()));
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
