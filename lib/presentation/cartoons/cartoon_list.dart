import 'package:api_test/domain/entities/cartoon_entity.dart';
import 'package:api_test/presentation/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:api_test/data/remote/cartoon_api.dart';

class CartoonList extends StatelessWidget {
  final cartoonApi = new CartoonListApi();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Rick and Morty'),
        backgroundColor: Colors.green[300],
      ),
      // Muestra un lista de objetos (no muchos)
      body: FutureBuilder(
          future: cartoonApi.getCartoonList(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Cartoon>> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (countext, i) =>
                    CardWidget(cartoon: snapshot.data[i]),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.white,
                ),
              );
            }
          }),
    );
  }
}
