//lambda function(arrow function)
var calarea=(double length, double width)=>(length*width);
//optional para,eter
 calculatearea(double length, double width,[String ?location]){
  double area=length*width;
  print('area:$area');
  if(location==null){
    return;
  }
else
  print('location:$location');


}
void main(){
  print('Area:${calarea(20.5,20.5)}');
  calculatearea(100, 200.5,);
}