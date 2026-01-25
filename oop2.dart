import 'mobile.dart';
import 'shop.dart';
import 'tablet.dart';
void main(){
  Shop gshop=Shop('gng', 'sdp');
  mobile iphone13=mobile(m: 'iPhone13', year: '2020', price: 12345.0);
  gshop.addNewMovile(iphone13);
  //interface
  gshop.sellMobile('blackberry');

  tablet iPad11=tablet(m: 'iPad11Gen', year: '2025', price: 12345, screenSize: 11);
  gshop.addNewMovile(iPad11);

  iphone13.setDevicePrice=1255;
  print(iphone13.currentPrice);
}