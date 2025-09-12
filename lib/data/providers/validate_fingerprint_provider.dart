import 'dart:io';

import 'package:app/common_lib.dart';
import 'package:app/data/models/fingerprint_model.dart';
import 'package:app/data/services/clients/auth_client.dart';

import '../services/clients/_clients.dart';

part 'validate_fingerprint_provider.g.dart';

@riverpod
class ValidateFingerprint extends _$ValidateFingerprint with AsyncXNotifierMixin<FingerPrintModel> {
  @override
  Future<AsyncX<FingerPrintModel>> build() => idle();

  @useResult
  RunXCallback<FingerPrintModel> run(File image) => handle(() async {
        return await ref.read(authClientProvider).validate(image).data;
      });
}
