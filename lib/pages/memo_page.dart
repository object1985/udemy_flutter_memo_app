import 'package:flutter/material.dart';

import '../model/memo.dart';

class MemoPage extends StatelessWidget {
  final Memo memo;
  const MemoPage(this.memo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('確認画面'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('メモタイトル',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          Text('メモ詳細',style: TextStyle(fontSize: 18),),
        ],
      ),
    );
  }
}
