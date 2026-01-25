import 'mobile.dart';

class Shop {
  late final String _name;
  late final String _location;
  List<mobile> _mobilelist=[];

  Shop(String name,String location){
    _name=name;
    _location=location;
  }

  void addNewMovile(mobile Mobile){
    _mobilelist.add(Mobile);
  }
  void _removeMobile(String model){
    _mobilelist.removeWhere((m)=> m.model==model);
  }
//implementation
  void sellMobile(String model){
    for(mobile i in _mobilelist){
      if(i.model==model){
        double totalPrice=i.currentPrice+((i.currentPrice/100)*15);
        print('Total price $totalPrice');
        _removeMobile(model);
        break;
      }
    }
    print('Mobile with this model is not found');

  }
}