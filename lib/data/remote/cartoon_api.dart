import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:api_test/domain/entities/cartoon_entity.dart';

class CartoonListApi {
  final url = 'https://rickandmortyapi.com/api/character';
  Future<List<Cartoon>> getCartoonList() async {
    final response = await http.get(url);
    final Map<String, dynamic> decodeData = json.decode(response.body);
    final List<Cartoon> cartoons = new List();
    dynamic res = decodeData['results'];
    res.forEach((value) {
      final item = Cartoon.fromJson(value);
      cartoons.add(item);
    });
    return cartoons;
  }
}
