import 'dart:io';

void main(){
  String ? name;
  print('Enter your nme:');
  name= stdin.readLineSync();
  print('name is: $name');
  print('Enter your age');
  int ?age=int.tryParse(stdin.readLineSync()!);
  if(age==null){
    print('Enter valid age');
    return;
  }

if(age>=18){
      print('you are eligable for vote');
    }
    else{
      print('you are not eligable for vote');
    }
  }
