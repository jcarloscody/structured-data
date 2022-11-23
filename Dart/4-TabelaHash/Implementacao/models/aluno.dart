class Aluno {
  int _ra;
  String name;

  Aluno({int ra = -1, this.name = ""}) : this._ra = ra;

  int obterRa() {
    return _ra;
  }

  String obterName() {
    return name;
  }
}
