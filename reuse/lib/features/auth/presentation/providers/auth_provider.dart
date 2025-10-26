import 'dart:async';

import 'package:reuse/core/providers/jwt_data_provider.dart';
import 'package:reuse/core/services/secure_storage_service.dart';
import 'package:reuse/features/auth/presentation/providers/auth_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@Riverpod(keepAlive: true)
class Auth extends _$Auth {
  @override
  AuthState build() {
    _verifyToken();
    return const AuthState.initial();
  }

  Future<void> _verifyToken() async {
    final jwtData = await ref.read(jwtDataProvider.future);
    if (jwtData != null) {
      state = const AuthState.authenticated();
    } else {
      state = const AuthState.unauthenticated();
    }
  }

  Future<void> login(String token) async {
    await ref.read(secureStorageServiceProvider).saveToken(token);
    state = const AuthState.authenticated();
    ref.invalidate(jwtDataProvider);
  }

  Future<void> logout() async {
    await ref.read(secureStorageServiceProvider).deleteAll();
    state = const AuthState.unauthenticated();
    ref.invalidate(jwtDataProvider);
  }
}