# Package usage


## Growable stack with default constructor

```dart

void main(){

  Stack<int> myStack=Stack();
  myStack.push(2);
  myStack.push(4);
  myStack.push(5);
  myStack.push(6);
  myStack.push(6);
  myStack.show(); //2 4 5 6 6

  print(myStack.peek()); //6
  
  myStack.pop();
  myStack.show(); //2 4 5
 
}

```

## Make fixed stack

```dart

void main() {
  Stack<int> myStack = Stack.fixed(5);
  myStack.push(2);
  myStack.push(4);
  myStack.push(5);
  myStack.push(6);
  myStack.push(8);
  myStack.push(4); //throws an Exception
  myStack.show(); 
}

```

## Make growable stack

```dart

void main() {
  Stack<int> myStack = Stack.growable(5);
  myStack.push(2);
  myStack.push(4);
  myStack.push(5);
  myStack.push(6);
  myStack.push(8);
  myStack.push(4); //doesn't throw an exception
  myStack.show(); 

}

```