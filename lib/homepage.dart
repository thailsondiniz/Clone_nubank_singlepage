import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool visivel = true;
  String valorVisivel = 'R\$ 9.779,91';

  void textoUpdate() {
    setState(() => valorVisivel = visivel ? 'R\$  9.779,91' : ' ● ● ● ● ');
  }

  Widget getFavoriteIcon() {
    return visivel
        ? const Icon(Icons.visibility)
        : const Icon(Icons.visibility_off);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          //title: const Text('Ola, Usuário',),
          backgroundColor: const Color(0xFF820ad1),
          elevation: 0,
          actions: [
            IconButton(
              icon: getFavoriteIcon(),
              onPressed: () {
                setState(() {
                  visivel = !visivel;
                  textoUpdate();
                });
              },
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.help_outline),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person_add_alt),
            ),
          ],
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:0),
                child: Image.asset('icons/addimage.png',
                height:38),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Container(
              padding: const EdgeInsets.only(left: 20, top: 10),
              width: double.infinity,
              height: 55,
              //
              color: const Color(0xFF820ad1),
              child: const Text('Olá, Usuário',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 19)),
            ),
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20, top: 18),
                color: Colors.white,
                width: double.infinity,
                height: 45,
                child: const Text(
                  'Conta',
                  style: TextStyle(
                      color: Color(0xFF161616),
                      fontSize: 19,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, top: 2),
                color: Colors.white,
                width: double.infinity,
                height: 30,
                child: Text(
                  valorVisivel,
                  style: const TextStyle(
                      letterSpacing: -1.0,
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 0, bottom: 10),
                  child: SizedBox(
                    height: 125,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        const SizedBox(width: 23),
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: const Color(0xf4f4f4f4),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Padding(
                                padding: const EdgeInsets.all(22.0),
                                child: Image.asset('icons/pix.png'),
                              ),
                            ),
                            const Text(
                              'Área Pix',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: const Color(0xf4f4f4f4),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Image.asset('icons/barcode.png'),
                              ),
                            ),
                            const Text(
                              'Pagar',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: const Color(0xf4f4f4f4),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Padding(
                                padding: const EdgeInsets.all(21.0),
                                child: Image.asset('icons/transferir.png'),
                              ),
                            ),
                            const Text(
                              'Transferir',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: const Color(0xf4f4f4f4),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Padding(
                                padding: const EdgeInsets.all(21.0),
                                child: Image.asset('icons/depositar.png'),
                              ),
                            ),
                            const Text(
                              'Depositar',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: const Color(0xf4f4f4f4),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Image.asset('icons/emprestimo.png'),
                              ),
                            ),
                            const Text(
                              'Emprestimo',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: const Color(0xf4f4f4f4),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Image.asset('icons/grafico.png'),
                              ),
                            ),
                            const Text(
                              'Emprestimo',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: const Color(0xf4f4f4f4),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Image.asset('icons/coracao.png'),
                              ),
                            ),
                            const Text(
                              'Emprestimo',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: const Color(0xf4f4f4f4),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Image.asset('icons/smartphone.png'),
                              ),
                            ),
                            Container(
                              child: const Text(
                                textAlign: TextAlign.center,
                                'Recarga\nde celular',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 14),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xf4f4f4f4),
                          ),
                          padding: const EdgeInsets.only(left: 20, top: 0),
                          width: 350,
                          height: 50,
                          child: const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 0),
                                child: Icon(Icons.credit_card),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Meus Cartões',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13.5,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 22),
              SizedBox(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(width: 17),
                    Container(
                        width: 250,
                        height: 60,
                        decoration: BoxDecoration(
                          color: const Color(0xf4f4f4f4),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                            child: RichText(
                          text: const TextSpan(
                              text: 'Você tem R\$ 25.000,00 \ndisponíveis para',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: ' empréstimo.',
                                    style: TextStyle(
                                      color: Color(0xFF820ad1),
                                    ))
                              ]),
                        ))),
                    const SizedBox(width: 15),
                    Container(
                        width: 250,
                        height: 60,
                        decoration: BoxDecoration(
                          color: const Color(0xf4f4f4f4),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                            child: RichText(
                          text: const TextSpan(
                              text: 'Realize seus planos',
                              style: TextStyle(
                                color: Color(0xFF820ad1),
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: ' de 2023\ncom as Caixinhas',
                                    style: TextStyle(color: Colors.black))
                              ]),
                        ))),
                    const SizedBox(width: 15),
                    Container(
                        width: 250,
                        height: 60,
                        decoration: BoxDecoration(
                          color: const Color(0xf4f4f4f4),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                            child: RichText(
                          text: const TextSpan(
                              text: 'Convide amigos para o Nubank \n',
                              style: TextStyle(
                                color: Color(0xFF820ad1),
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'e desbloqueie...',
                                    style: TextStyle(color: Colors.black))
                              ]),
                        ))),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: 1.5,
              color: const Color(0xf4f4f4f4),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            child: Container(
              padding: const EdgeInsets.only(left: 20, top: 2),
              width: double.infinity,
              height: 32,
              color: Colors.white,
              child: const Text('Cartão de crédito',
                  style: TextStyle(
                      color: Color(0xFF161616),
                      fontWeight: FontWeight.w500,
                      fontSize: 19)),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            child: Container(
              padding: const EdgeInsets.only(left: 20, top: 0),
              width: double.infinity,
              height: 23,
              color: Colors.white,
              child: const Text('Fatura atual',
                  style: TextStyle(
                      color: Color(0xF46E6E6E),
                      fontWeight: FontWeight.w400,
                      fontSize: 16)),
            ),
          ),
          Container(
            child: Container(
              padding: const EdgeInsets.only(left: 20, top: 0),
              width: double.infinity,
              height: 22,
              color: Colors.white,
              child: const Text('R\$ 106,12',
                  style: TextStyle(
                      color: Color(0xFF161616),
                      fontWeight: FontWeight.w500,
                      fontSize: 18)),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            child: Container(
              padding: const EdgeInsets.only(left: 20, top: 2),
              width: double.infinity,
              height: 28,
              color: Colors.white,
              child: const Text('Limite disponível R\$ 5.162,20',
                  style: TextStyle(
                      color: Color(0xF46E6E6E),
                      fontWeight: FontWeight.w400,
                      fontSize: 14)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xf4f4f4f4),
                      ),
                      padding: const EdgeInsets.only(left: 25, top: 0),
                      width: 350,
                      height: 50,
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 0),
                            child: Icon(Icons.shopping_bag_outlined),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Limite extra NuPay                  R\$ 1.600,00',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13.5,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          Center(
            child: Container(
              height: 1.5,
              color: const Color(0xf4f4f4f4),
            ),
          ),
        ],
      ),
    );
  }
}
