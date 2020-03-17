/*
 * @Author: HelloTalk.leo 
 * @Date: 2020-03-17 10:12:01 
 * @Last Modified by: leo
 * @Last Modified time: 2020-03-17 11:48:13
 */

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:reduxdemo/mine/actions.dart';
import 'package:reduxdemo/mine/middleware.dart';
import 'package:reduxdemo/redux/appState.dart';
import 'state.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePage createState() => _MinePage();
}
class _MinePage extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    buildload(String word) {
      return Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            FlatButton(
                child: Text('测试普通Action'),
                onPressed: () async {
                  var store = StoreProvider.of<AppState>(context);
                  store.dispatch(SearchWordAction("000"));
                }),
            FlatButton(child: Text('测试异步Action'), onPressed: () async {
               var store = StoreProvider.of<AppState>(context);
                  store.dispatch(fetchList());
            }),
            // 输出该结果
            Text('扫描的单词$word\n'),
          ],
        ),
      );
    }

    buildList(store, List<String> list) {
      return ListView.builder(
          itemCount: list.length,
          itemExtent: 50.0, //强制高度为50.0
          itemBuilder: (BuildContext context, int index) {
            return ListTile(title: Text("$index ${list[index]}"));
          });
    }

    return Scaffold(
      appBar: AppBar(title: Text('个人中心')),
      body: StoreConnector<AppState, MineState>(
        onInit: (store) {
          if (store.state.mineState.list.isEmpty) {
            // store.dispatch(search);
            store.dispatch(SearchWordAction("hello"));
          }
        },
        converter: (store) {
          return store.state.mineState;
        },
        builder: (context, state) {
          if (state.list.isEmpty) {
            return buildload(state.word);
          } else {
            var store = StoreProvider.of<AppState>(context);
            var list = state.list;
            return buildList(store, list);
          }
        },
      ),
    );
  }
}
