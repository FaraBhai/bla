void main(){
  Set<String> colors={'Black','Green'};
  print(colors);
  colors.add('white');
  print(colors);
  colors.addAll({'purple','red'});
  print(colors);
  print(colors.elementAt(1));
  print(colors.length);
  print(colors.isEmpty);
  print(colors.contains('white'));

  Set<String>colors2={'grey','maroon','white','brown'};
  print(colors);
  print(colors2);
  print(colors.intersection(colors2));
  print(colors2.union(colors));
  List<int> numbers=[1,2,3,4,5];
  print(numbers);
  numbers.add(70);
  numbers.addAll([2,3,4]);
  print(numbers);
  numbers.insert(0, 50);
  print(numbers);
  numbers.insertAll(2, [99,90]);
  print(numbers);
  print('list number index wise:${numbers[5]}');
  numbers[5]=55;
  print(numbers);
  numbers.remove(2);//value
  numbers.removeAt(2);//index
  print(numbers);
  List<dynamic> test1=['hu',2,09,20.5];
  print(test1);
  List test2=['jhjj',99,99.99];
  print(test2.runtimeType);

  Map<String, String>person={
    'name':'fara',
    'age':'20',
    'address':'dhaka',
  };
  print(person);
  print('What\'s yours name?');
  print(person['name']);
  print('Whats your age?');
  print('My age is ${person['age']}');
  person['address']='sdp';
  print('cirrent address:${person['address']}');
  person.remove('age');
  print(person);
  Map<String, String> additionlInfo={
    'age':'24',
    'uni':'BAUST'
  };
  person.addAll(additionlInfo);
  print(person);
  var keylist=person.keys.toList();
  print(keylist);

  var valuelist=person.values.toList();
  print(valuelist);
  person.addAll({
    'mail': 'a@bgmail.com'
  });
  print(person);
  person['country']='bd';

}