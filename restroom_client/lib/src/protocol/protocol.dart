/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'models/example.dart' as _i2;
import 'models/rating.dart' as _i3;
import 'models/restroom.dart' as _i4;
import 'protocol.dart' as _i5;
import 'package:restroom_client/src/protocol/models/restroom.dart' as _i6;
import 'package:serverpod_auth_client/module.dart' as _i7;
export 'models/example.dart';
export 'models/rating.dart';
export 'models/restroom.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.Example) {
      return _i2.Example.fromJson(data, this) as T;
    }
    if (t == _i3.Rating) {
      return _i3.Rating.fromJson(data, this) as T;
    }
    if (t == _i4.Restroom) {
      return _i4.Restroom.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Example?>()) {
      return (data != null ? _i2.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.Rating?>()) {
      return (data != null ? _i3.Rating.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.Restroom?>()) {
      return (data != null ? _i4.Restroom.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<List<_i5.Rating>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i5.Rating>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i6.Restroom>) {
      return (data as List).map((e) => deserialize<_i6.Restroom>(e)).toList()
          as dynamic;
    }
    try {
      return _i7.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i7.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    if (data is _i2.Example) {
      return 'Example';
    }
    if (data is _i3.Rating) {
      return 'Rating';
    }
    if (data is _i4.Restroom) {
      return 'Restroom';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i7.Protocol().deserializeByClassName(data);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i2.Example>(data['data']);
    }
    if (data['className'] == 'Rating') {
      return deserialize<_i3.Rating>(data['data']);
    }
    if (data['className'] == 'Restroom') {
      return deserialize<_i4.Restroom>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
