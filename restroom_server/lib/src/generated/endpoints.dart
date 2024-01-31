/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/example_endpoint.dart' as _i2;
import '../endpoints/rating_endpoint.dart' as _i3;
import '../endpoints/restroom_endpoint.dart' as _i4;
import 'package:restroom_server/src/generated/models/rating.dart' as _i5;
import 'package:restroom_server/src/generated/models/restroom.dart' as _i6;
import 'package:serverpod_auth_server/module.dart' as _i7;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'example': _i2.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'rating': _i3.RatingEndpoint()
        ..initialize(
          server,
          'rating',
          null,
        ),
      'restroom': _i4.RestroomEndpoint()
        ..initialize(
          server,
          'restroom',
          null,
        ),
    };
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i2.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['rating'] = _i1.EndpointConnector(
      name: 'rating',
      endpoint: endpoints['rating']!,
      methodConnectors: {
        'createRating': _i1.MethodConnector(
          name: 'createRating',
          params: {
            'rating': _i1.ParameterDescription(
              name: 'rating',
              type: _i1.getType<_i5.Rating>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['rating'] as _i3.RatingEndpoint).createRating(
            session,
            params['rating'],
          ),
        )
      },
    );
    connectors['restroom'] = _i1.EndpointConnector(
      name: 'restroom',
      endpoint: endpoints['restroom']!,
      methodConnectors: {
        'registerRoom': _i1.MethodConnector(
          name: 'registerRoom',
          params: {
            'restroom': _i1.ParameterDescription(
              name: 'restroom',
              type: _i1.getType<_i6.Restroom>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['restroom'] as _i4.RestroomEndpoint).registerRoom(
            session,
            params['restroom'],
          ),
        )
      },
    );
    modules['serverpod_auth'] = _i7.Endpoints()..initializeEndpoints(server);
  }
}
