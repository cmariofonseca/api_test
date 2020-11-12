import 'package:api_test/domain/entities/cartoon_entity.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Cartoon cartoon;

  CardWidget({@required this.cartoon});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Image(
              image: NetworkImage(cartoon.image),
            ),
            title: Text('${cartoon.name} - ${cartoon.gender}'),
            subtitle: Text('${cartoon.species} - ${cartoon.status}'),
          ),
        ],
      ),
    );
  }
}
