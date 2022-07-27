void main() {
  Boneco boneco1 = Boneco(
    nome: "Boneco1",
    vida: 100,
    danoBase: 50,
    defesa: 10,
  );
  Boneco boneco2 = Boneco(
    nome: "Boneco2",
    vida: 100,
    danoBase: 50,
    defesa: 10,
  );

  //Chamamos a função que realiza o ataque, passando o alvo
  boneco1.atacar(alvo: boneco2); // -> Seu ataque tirou 45 do alvo Boneco2

  print(boneco2.vida); // -> Vida boneco2 é igual a 55
}

class Boneco {
  Boneco({required double vida, required double danoBase, required String nome, required double defesa}) {
    this.nome = nome;
    this.danoBase = danoBase;
    this.vida = vida;
    this.defesa = defesa / 100;
  }

  late String nome;
  late double vida;
  late double defesa;
  late double danoBase;
  late var itens = [];

  atacar({required Boneco alvo}) {
    double danoTotal = danoBase - (danoBase * alvo.defesa);
    alvo.vida = alvo.vida - danoTotal;
    print("Seu ataque tirou $danoTotal do alvo ${alvo.nome}");
  }
}
