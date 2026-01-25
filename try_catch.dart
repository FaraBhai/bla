import 'dart:io';

void main(){

  try{
      print('Enter your age');
  String ?input=stdin.readLineSync();
  int ?age=int.parse(input!);
      if(age>18){
    print('You are eligable for vote');
  }
  else{
    print('Not eligable forvote');
  }
  }catch(error){
    print('Enter valid input');
  }

  print('test 1');

}