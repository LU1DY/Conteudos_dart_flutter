class Boss{
  String _nome = '';
  int _poder = 0;
  int _vida = 0;
 String get nome => this._nome;

 set nome(String value) => this._nome = value;

  get poder => this._poder;

 set poder( value) => this._poder = value;

  get vida => this._vida;

 set vida( value) => this._vida = value;

  Boss({required this._nome, required this._poder, required this._vida});

  void atacar(){
    print("O chefe atacou com poder $_poder");
  }


}