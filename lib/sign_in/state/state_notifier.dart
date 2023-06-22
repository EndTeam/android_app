import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ma_for_feip/sign_up/model/user_model.dart';
import 'package:ma_for_feip/sign_in/state/state.dart';

class SignInNotifier extends StateNotifier<SignInState> {
  final SignInSource _source;

  SignInNotifier(this._source) : super(const SignInState());

  Future<void> signIn(UserModel credentials) async {
    state = const SignInState.awaiting();
    await null;
    try {
      final resp = await _source.signIn(credentials.toJson());
      resp;
      // TODO save at auth module
      state = const SignInState.success();
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      state = const SignInState.error();
    }
  }
}

class SignInSource {
  final Dio _dio;

  SignInSource(this._dio);

  Future<Map<String, dynamic>> signIn(Map<String, dynamic> credentials) async {
    final resp = await _dio.post(
      '/auth/login/',
      data: credentials,
    );
    return resp.data;
    // TODO errors
  }
}
