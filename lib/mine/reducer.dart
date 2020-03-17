/*
 * @Author: HelloTalk.leo 
 * @Date: 2020-03-17 10:37:22 
 * @Last Modified by:   leo 
 * @Last Modified time: 2020-03-17 10:37:22 
 */

import 'package:reduxdemo/mine/actions.dart';
import 'package:reduxdemo/mine/state.dart';

MineState mineReducer(MineState pre ,dynamic action){
  if(action is FetchListAction){
    return pre.copyWith(list:action.list);
  }else if(action is SearchWordAction){
    return pre.copyWith(word:action.word);
    }
  return pre ;
}