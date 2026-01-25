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
  String Grade;
  List courses;
  List scores;
  Student(super.name,super.address,super.age,this.StudentId,this.Grade,this.courses,this.scores);
  void displayRole(){
    print('Role:Student');
  }
  double totalScore=0;
  void AverageScore(scores){
    for(var i in  scores){
      totalScore+=i;
    }
    double average=totalScore/courses.length;
    print('Average Score: $average');

  }
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
  List courses=['math','english','bangla'];
  List scores=[90,85,82];

  var students=Student('John Doe', '123 Main St', 20, '08063', 'A', courses, scores);
  print('Name:${students.name}');
   print('Age:${students.age}');
    print('Address:${students.address}');
  students.displayRole();
  students.AverageScore(scores);
  var CoursesTaught=['Math','English','Bnagla'];

  var teacher=Teacher('Mrs. Smith', '456 Oak St', 35, '78676u86', CoursesTaught);
  teacher.displayRole();
    print('Name:${teacher.name}');
   print('Age:${teacher.age}');
    print('Address:${teacher.address}');
    teacher.displayCourse(CoursesTaught);
    


}