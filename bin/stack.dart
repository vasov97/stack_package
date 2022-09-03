import 'dart:core';

class Stack<T>{
  
  late int _top;
  
  late int _maxSize;
  
  late bool _isFixed;
  
  final List<T> _myStack=[];
  
  
  Stack(){
    _top=-1;
    _maxSize=0;
    _isFixed=false;
  }
  
  Stack.fixed(this._maxSize){
    _top=-1;
    _isFixed=true;
  }
  
  Stack.growable(this._maxSize){
    _top=-1;
    _isFixed=false;
  }
  
  
  T get getTop=> _myStack[_top];
  
  int get maxSize => _maxSize;
  
  int get currentSize => _myStack.length;
  
  bool get isEmpty => _top==-1;
  
  bool get isFull => _top==(_myStack.length-1);
  
  
  
  T pop(){
    
    if(!isEmpty){
      T element = getTop;
      _top--;
      return element;
    }
    else{
      throw Exception('Can\'t pop with an empty stack');
    }
  }
  
  
  T peek(){
    if(!isEmpty){
      return getTop;
    }
    else{
      throw Exception('Can\'t peek with an empty stack');
    }
  }
  
  void push(T element){
    
    if(_isFixed){
      if(_top==(_maxSize-1)){
        throw Exception('Can\'t push new element to a full stack');
      }
      else{
      
      _top++;
      _myStack.add(element);
      }
    }
    else if(!_isFixed){
      _maxSize++;
      _top++;
      _myStack.add(element);
    }
  }
  
  void show(){
    for(int i=_top;i>=0;i--){
      print(_myStack[i]);
    }
  } 
}




void main(){

  Stack<int> myStack=Stack.growable(4);
  myStack.push(2);
  myStack.push(4);
  myStack.push(5);
  myStack.push(6);
  myStack.push(6);
  myStack.show(); 
  print('-----');
  print(myStack.peek()); 
  print('-----');
  myStack.pop();
  myStack.show(); 
 
}
