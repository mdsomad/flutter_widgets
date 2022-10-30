// ignore_for_file: public_member_api_docs, sort_constructors_first
import "package:json_annotation/json_annotation.dart";

part 'UserModel.g.dart';

@JsonSerializable()
class UserModel {
  late String id;
  late String fullname;
  late String email;

  UserModel({
    required this.id,
    required this.fullname,
    required this.email,
  });


  // Map to Object
 factory UserModel.formJson(Map<String,dynamic>map) => _$UserModelFormJson(map);
 

  // Object to Map
  Map<String,dynamic>toJson()=> _$UserModelToJson(this);
}
