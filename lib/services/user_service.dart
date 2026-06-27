import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user_model.dart';

class UserService {
  Future<List<UserModel>> fetchUsers() async {
    final response = await http.get(Uri.parse('https://randomuser.me/api/?results=100'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List results = data['results'];
      return results.map((userJson) => UserModel.fromJson(userJson)).toList();
    } else {
      throw Exception('Error al cargar usuarios');
    }
  }
}