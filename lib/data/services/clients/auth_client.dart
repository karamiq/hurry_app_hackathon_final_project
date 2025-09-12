import 'dart:io';

import 'package:app/data/models/authentication_model.dart';
import 'package:app/data/models/fingerprint_model.dart';
import 'package:app/data/services/clients/callback.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '_clients.dart';

part "auth_client.g.dart";

@riverpod
AuthClient authClient(Ref ref) => AuthClient(ref.dio);

@RestApi()
abstract class AuthClient {
  factory AuthClient(Dio dio, {String baseUrl}) = _AuthClient;

  @POST('/login')
  FutureApiResponse<AuthenticationModel> login(@Body() dynamic data);

  @MultiPart()
  @POST('/')
  FutureApiResponse<FingerPrintModel> validate(@Part() File file);
}
