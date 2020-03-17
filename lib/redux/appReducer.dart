/*
 * @Author: HelloTalk.leo 
 * @Date: 2020-03-17 10:36:21 
 * @Last Modified by: leo
 * @Last Modified time: 2020-03-17 10:36:46
 */


import 'package:reduxdemo/mine/reducer.dart';
import 'package:reduxdemo/redux/appState.dart';

AppState appReducer(AppState state, action) {
   return AppState(
    mineState: mineReducer(state.mineState, action));
}