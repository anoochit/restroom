/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:restroom_client/src/protocol/models/rating.dart' as _i3;
import 'package:restroom_client/src/protocol/models/restroom.dart' as _i4;
import 'package:serverpod_auth_client/module.dart' as _i5;
import 'protocol.dart' as _i6;

/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

/// {@category Endpoint}
class EndpointRating extends _i1.EndpointRef {
  EndpointRating(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'rating';

  _i2.Future<_i3.Rating> createRating(_i3.Rating rating) =>
      caller.callServerEndpoint<_i3.Rating>(
        'rating',
        'createRating',
        {'rating': rating},
      );
}

/// {@category Endpoint}
class EndpointRestroom extends _i1.EndpointRef {
  EndpointRestroom(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'restroom';

  _i2.Future<_i4.Restroom> registerRoom(_i4.Restroom restroom) =>
      caller.callServerEndpoint<_i4.Restroom>(
        'restroom',
        'registerRoom',
        {'restroom': restroom},
      );

  _i2.Future<List<_i4.Restroom>> getRestRooms() =>
      caller.callServerEndpoint<List<_i4.Restroom>>(
        'restroom',
        'getRestRooms',
        {},
      );

  _i2.Future<List<_i4.Restroom>> getRestRoom(int id) =>
      caller.callServerEndpoint<List<_i4.Restroom>>(
        'restroom',
        'getRestRoom',
        {'id': id},
      );
}

class _Modules {
  _Modules(Client client) {
    auth = _i5.Caller(client);
  }

  late final _i5.Caller auth;
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
  }) : super(
          host,
          _i6.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
        ) {
    example = EndpointExample(this);
    rating = EndpointRating(this);
    restroom = EndpointRestroom(this);
    modules = _Modules(this);
  }

  late final EndpointExample example;

  late final EndpointRating rating;

  late final EndpointRestroom restroom;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'example': example,
        'rating': rating,
        'restroom': restroom,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
