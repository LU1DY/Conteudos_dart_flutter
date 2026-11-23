
class Participante {
  String _nome;
  String _email;
  int _idade;
  String _evento;
  String _telefone;

  Participante({
    required String nome,
    required String email,
    required int idade,
    required String evento,
    required String telefone,
  })  : _nome = nome,
        _email = email,
        _idade = idade,
        _evento = evento,
        _telefone = telefone;

  String get nome => _nome;
  set nome(String value) => _nome = value;

  String get email => _email;
  set email(String value) => _email = value;

  int get idade => _idade;
  set idade(int value) => _idade = value;

  String get evento => _evento;
  set evento(String value) => _evento = value;

  String get telefone => _telefone;
  set telefone(String value) => _telefone = value;
}
