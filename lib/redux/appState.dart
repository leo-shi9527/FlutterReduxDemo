/*
 * @Author: HelloTalk.leo 
 * @Date: 2020-03-17 10:16:10 
 * @Last Modified by:   leo 
 * @Last Modified time: 2020-03-17 10:16:10 
 */

/*
 * 统一设置全局的  State
 */
import 'package:reduxdemo/mine/state.dart';

class AppState {

  final  MineState mineState ;
  AppState({this.mineState});
}

/*
 *  初始化 AppState
 */
AppState initAppState() {
  return AppState(mineState:MineState.init());
}
