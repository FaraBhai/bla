import 'mobile.dart';

class tablet extends mobile{
  late double screenSize;
  tablet({required super.m, required super.year,required super.price,required this.screenSize});

  // @override
  //   String getStorage(){
  //     return super.getStorage(); //to access private property that has been used in this method of parent class
  //   }
}