void main(){
  List<String> students=['a','b','c','d','e'];
  for(int i=0;i<students.length;i++){
    print('${students[i]} has attended the class');
  }
  print('for each');
  for(var i in students){
    print('$i has attended');
  }

  var  orderlist=[
    {'name':'fara','age':20,'address':'sdp'},
    {'name':'farha','age':24,'address':'mym'},
    {'name':'ken','age':34,'address':'nyc'},
    {'name':'peter','age':45,'address':'quohog'},
  ];
  int totalage=0;

  print(orderlist);
 for(var i in orderlist){
  totalage=totalage+(i['age'] as int);
  print(i['name']);
 }
}