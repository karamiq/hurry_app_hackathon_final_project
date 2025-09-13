import 'package:app/common_lib.dart';
import 'package:app/data/services/clients/_clients.dart';
import 'package:flutter/material.dart';

part 'enum.g.dart';

@JsonEnum(alwaysCreate: true)
enum Role {
  @JsonValue("gym")
  gym,
  @JsonValue("bank")
  bank;

  String toJson() => _$RoleEnumMap[this]!;

  String displayName(BuildContext context) {
    switch (this) {
      case Role.gym:
        return context.l10n.gym;
      case Role.bank:
        return context.l10n.bank;
    }
  }
}
