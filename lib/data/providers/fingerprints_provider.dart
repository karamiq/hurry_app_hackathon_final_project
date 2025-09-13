import 'dart:io';

import 'package:app/common_lib.dart';
import 'package:app/data/models/enum.dart';
import 'package:app/data/models/fingerprint_model.dart';
import 'package:app/data/models/fingerprint_response_model.dart';
import 'package:app/data/services/clients/auth_client.dart';

import '../services/clients/_clients.dart';

part 'fingerprints_provider.g.dart';

@riverpod
class MatchFingerprints extends _$MatchFingerprints with AsyncXNotifierMixin<FingerPrintModel> {
  @override
  Future<AsyncX<FingerPrintModel>> build() => idle();

  @useResult
  RunXCallback<FingerPrintModel> run(File image, Role? role) => handle(() async {
        return await ref.read(authClientProvider).validate(image, role).data;
      });
}

@riverpod
class UploadFingerprints extends _$UploadFingerprints with AsyncXNotifierMixin<FingerprintResponse> {
  @override
  Future<AsyncX<FingerprintResponse>> build() => idle();

  @useResult
  RunXCallback<FingerprintResponse> run(File image) => handle(() async {
        return await ref.read(authClientProvider).upload(image).data;
      });
}
