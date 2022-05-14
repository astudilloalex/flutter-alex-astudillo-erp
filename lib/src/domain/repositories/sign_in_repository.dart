import 'package:alex_astudillo_erp/src/domain/requests/src/sign_in_request.dart';
import 'package:alex_astudillo_erp/src/domain/responses/src/sign_in_response.dart';

abstract class SignInRepository {
  const SignInRepository();

  Future<SignInResponse> signIn(final SignInRequest request);
}
