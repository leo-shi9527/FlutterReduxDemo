/*
 * @Author: HelloTalk.leo 
 * @Date: 2020-03-17 10:41:30 
 * @Last Modified by: leo
 * @Last Modified time: 2020-03-17 11:34:57
 */

import 'package:redux_thunk/redux_thunk.dart';
import 'package:reduxdemo/mine/actions.dart';
import 'package:reduxdemo/redux/appState.dart';
import 'package:redux/redux.dart';

ThunkAction<AppState> fetchList(){
  //  await Future.delayed(Duration(milliseconds: 3000));
  var list = [
    "Redux Demo",
    "Redux Demo",
    "Redux Demo",
    "Redux Demo",
    "Redux Demo",
    "Redux Demo",
    "Redux Demo",
    "Redux Demo"
  ];
  return (Store<AppState> store) async{
    await Future.delayed(Duration(seconds: 3)); // 延迟 3 秒
    store.dispatch(FetchListAction(list));  
  };
}

