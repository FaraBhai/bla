class mobile{
  double _price=0;
  String model='';
  String year='';
  String _storage='256';

  mobile({required String m, required String year,required double price}){
    model=m;
    this.year=year;
    this._price=price;
  }
  void capturePhoto(){}
  void captureVideo(){}

  String getStorage(){
    return _storage;
  }

  String get deviceStorage{
    return _storage;
  }

  double get currentPrice{ //to achive encapsulation
    return _price;
  }

  void set setDevicePrice(double newPrice){ //to achive robustness
    if(newPrice>=0){
      _price=newPrice;
    }
    else{
      throw Exception('eRROR');
    }
  }
}

