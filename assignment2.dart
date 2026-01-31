import 'dart:ffi';

abstract class Animal{
  late String _name;
  Animal(String name){
    _name=name;
  }
  void makeSound();
  String getName()=>_name;
}

class Lion extends Animal{
   double _maneSize;
  Lion(super.name,this._maneSize);
  @override
  void makeSound() {
    print('roar');
  }

  void get Size=>_maneSize;
   set size(newsize)=> newsize>0? _maneSize=newsize : print('error');


}
class Elephant extends Animal{
  double _trunkLength;
  Elephant(super.name,this._trunkLength);
  @override
  void makeSound() {
    print('Pawoo');
  }
   void get Length=>_trunkLength;
   set length(newlength)=> newlength>0? _trunkLength=newlength : print('error');
  
}
class Parrot extends Animal{
  double _vocabularySize;
  Parrot(super.name,this._vocabularySize);
  @override
  void makeSound() {
    print('Squawk');
  }
   void get Size=>_vocabularySize;
   set size(newsize)=> newsize>0? _vocabularySize=newsize : print('error');
}

void main(){
  List animal=[Lion('simba', 20),Elephant('medha', 2),Parrot('mithu',20.5)];
  for(var i in animal){
    print('name:${i.getName()}');
    print('Sound:');
    i.makeSound();
    if(i is Lion){
      print('Mane Size:${i._maneSize}');
    }
    else if(i is Elephant){
      print('Trunk Length:${i._trunkLength}');
    }
    else{
      print('Vocabulary Size:${i._vocabularySize}');
    }
  }
}