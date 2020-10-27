///
//  Generated code. Do not modify.
//  source: namecard.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'google/protobuf/empty.pb.dart' as $0;
import 'namecard.pb.dart' as $1;
export 'namecard.pb.dart';

class NameCardClient extends $grpc.Client {
  static final _$getList = $grpc.ClientMethod<$0.Empty, $1.GetListResp>(
      '/xcl.NameCard/getList',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetListResp.fromBuffer(value));
  static final _$getDetail =
      $grpc.ClientMethod<$1.GetDetailReq, $1.GetDetailResp>(
          '/xcl.NameCard/getDetail',
          ($1.GetDetailReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.GetDetailResp.fromBuffer(value));

  NameCardClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$1.GetListResp> getList($0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getList, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.GetDetailResp> getDetail($1.GetDetailReq request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getDetail, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class NameCardServiceBase extends $grpc.Service {
  $core.String get $name => 'xcl.NameCard';

  NameCardServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.GetListResp>(
        'getList',
        getList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.GetListResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetDetailReq, $1.GetDetailResp>(
        'getDetail',
        getDetail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetDetailReq.fromBuffer(value),
        ($1.GetDetailResp value) => value.writeToBuffer()));
  }

  $async.Future<$1.GetListResp> getList_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getList(call, await request);
  }

  $async.Future<$1.GetDetailResp> getDetail_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetDetailReq> request) async {
    return getDetail(call, await request);
  }

  $async.Future<$1.GetListResp> getList(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.GetDetailResp> getDetail(
      $grpc.ServiceCall call, $1.GetDetailReq request);
}
