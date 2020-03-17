/*
 * @Author: HelloTalk.leo 
 * @Date: 2020-03-17 10:17:36 
 * @Last Modified by: leo
 * @Last Modified time: 2020-03-17 11:30:21
 */

class MineState {
  List<String> list = []; // 列表数据
  String word = ''; //准备查询的单词
  MineState({this.list, this.word}); // 初始化方法
 factory MineState.init(){
      return  MineState(list:[],word:'');
    }
  //复制一个对象方便reducer中进行change
  MineState copyWith({List<String> list, String word}) {
    return MineState(list: list ?? this.list, word: word ?? this.word);
  }
}
