import 'package:flutter/material.dart';
import 'package:reduxdemo/redux/appReducer.dart';
import 'package:reduxdemo/redux/appState.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import 'mine/mine.dart';

Store<AppState> appStore;
void main() async {
  final Store<AppState> store = Store<AppState>(appReducer,
      initialState: initAppState(), middleware: [thunkMiddleware]);
  appStore = store;
  runApp(StoreProvider(
    store: appStore,
    child: MyApp(),
  ));
}
class MyApp extends StatefulWidget{
 @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class  _MyAppState extends State<MyApp> {
   @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context){
    return MaterialApp(
       color: Colors.white,
       home: Builder(builder: (context){
         return StoreConnector<AppState,bool>(
           distinct: true,
           converter: (store) => true,
           builder: (context,isLogin){
              return MinePage();
           },
         );
       }),
    ); 
  }
}