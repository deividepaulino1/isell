class Produto {
  int? id;
  String? nome;
  String? sobrenome;
  String? endereco;
  int? numero;
  String? email;
  String? telefone;

  Produto(
      {this.id,
      this.nome,
      this.sobrenome,
      this.endereco,
      this.numero,
      this.email,
      this.telefone});

  Produto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    sobrenome = json['sobrenome'];
    endereco = json['endereco'];
    numero = json['numero'];
    email = json['email'];
    telefone = json['telefone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['sobrenome'] = this.sobrenome;
    data['endereco'] = this.endereco;
    data['numero'] = this.numero;
    data['email'] = this.email;
    data['telefone'] = this.telefone;
    return data;
  }
}
