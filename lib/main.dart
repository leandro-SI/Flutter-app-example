import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Transferências'),
          ),
          floatingActionButton: const FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: teste,
          ),
          body: const ListaDeTransferencias(),
        ),
      ),
    );

void teste() {}

class ListaDeTransferencias extends StatelessWidget {
  const ListaDeTransferencias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Itemtransferencia(Transferencia(150.00, "394-2")),
        Itemtransferencia(Transferencia(200.00, "394-2"))
      ],
    );
  }
}

class Itemtransferencia extends StatelessWidget {

  final Transferencia _transferencia;

  const Itemtransferencia(this._transferencia, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.conta),
      ),
    );
  }
}

class Transferencia {
  final double valor;
  final String conta;

  const Transferencia(this.valor, this.conta);

}
