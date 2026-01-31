import 'dart:io';

abstract class Role{
  void displayRole(){}
}

class Person implements Role{
  String name,address;
  int age;
  void displayRole(){
    print('Role:Person');
  }
  Person(this.name,this.address,this.age){}
}
class Student extends Person{
  String StudentId;
  List courses;
  List scores;
  Student(super.name,super.address,super.age,this.StudentId,this.courses,this.scores);
  void displayRole(){
    print('Role:Student');
  }
  
  double AverageScore(){
    double totalScore=0;
    for(var i in  scores){
      totalScore+=i;
    }
    double average=totalScore/courses.length;
    return average;

  }

  String get Grade => AverageScore()>=80?'A+':(AverageScore()>=40?'pass':'F');
}
 class Teacher extends Person{
  String TeacherId;
  var CoursesTaught=<String>[];
  Teacher(super.name,super.address,super.age,this.TeacherId,this.CoursesTaught){}
    void displayRole(){
    print('Role:Teacher');
  }
  displayCourse(CoursesTaught){
    print('Courses taught by $TeacherId are:');
    for(var i in CoursesTaught){
      print('-$i\n');
    }
  }
 }

void main(){
  print('Enter your name:');
  String name=stdin.readLineSync()!;
  print('Enter your address:');
  String address=stdin.readLineSync()!;
  print('Enter your age:');
  int age=int.parse(stdin.readLineSync()!);
  print('Enter your student ID:');
  String StudentId=stdin.readLineSync()!;
  print('How many courses do you want to enter? ');
  int courseCount = int.parse(stdin.readLineSync()!);
  List courses=[];
  List scores=[];
  print('Enter your courses:');
  for(int i=0;i<courseCount;i++){
    print('Enter your course:');
    courses.add(stdin.readLineSync()!);
    print('Enter the markof that following course:');
    scores.add(double.parse(stdin.readLineSync()!));

  }
      var students=Student(name, address, age, StudentId, courses, scores);
      students.displayRole();
      print('Final Grade:${students.Grade}');

  


  
}