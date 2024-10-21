
import 'package:json_annotation/json_annotation.dart';
part 'signup_request_body.g.dart';

@JsonSerializable()
class SignupRequestBody {
  final String name;
  final String email;
  final String password;
  final String phone;
  @JsonKey(name:"password_confirmation")
  final String passwordCofirmation;
  final int gender;

  SignupRequestBody({
    required this.email,
    required this.password,
    required this.gender,
    required this.name,
    required this.phone,
    required this.passwordCofirmation
  });

  Map<String , dynamic> toJson() => _$SignupRequestBodyToJson(this);
}
