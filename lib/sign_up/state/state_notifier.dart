import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ma_for_feip/sign_up/model/user_model.dart';
import 'package:ma_for_feip/sign_up/state/state.dart';

class SignUpNotifier extends StateNotifier<SignUpState> {
  final SignUpSource _source;

  SignUpNotifier(this._source) : super(const SignUpState());

  Future<void> signUp(UserModel credentials) async {
    state = const SignUpState.awaiting();
    await null;
    try {
      final resp = await _source.signUp(credentials.toJson());
      resp;
      // TODO save at auth module
      state = const SignUpState.success();
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      state = const SignUpState.error();
    }
  }
}

class SignUpSource {
  final Dio _dio;

  SignUpSource(this._dio);

  Future<Map<String, dynamic>> signUp(Map<String, dynamic> credentials) async {
    final resp = await _dio.post('/register/', data: credentials);
    return resp.data;
    // TODO errors
  }
}
