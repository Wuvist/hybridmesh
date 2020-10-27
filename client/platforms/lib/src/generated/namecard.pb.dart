///
//  Generated code. Do not modify.
//  source: namecard.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class NameCardListItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NameCardListItem', package: const $pb.PackageName('xcl'), createEmptyInstance: create)
    ..aOS(1, 'name')
    ..a<$core.int>(2, 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  NameCardListItem._() : super();
  factory NameCardListItem() => create();
  factory NameCardListItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NameCardListItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NameCardListItem clone() => NameCardListItem()..mergeFromMessage(this);
  NameCardListItem copyWith(void Function(NameCardListItem) updates) => super.copyWith((message) => updates(message as NameCardListItem));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NameCardListItem create() => NameCardListItem._();
  NameCardListItem createEmptyInstance() => create();
  static $pb.PbList<NameCardListItem> createRepeated() => $pb.PbList<NameCardListItem>();
  @$core.pragma('dart2js:noInline')
  static NameCardListItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NameCardListItem>(create);
  static NameCardListItem _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get id => $_getIZ(1);
  @$pb.TagNumber(2)
  set id($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);
}

class GetListResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetListResp', package: const $pb.PackageName('xcl'), createEmptyInstance: create)
    ..pc<NameCardListItem>(1, 'result', $pb.PbFieldType.PM, subBuilder: NameCardListItem.create)
    ..hasRequiredFields = false
  ;

  GetListResp._() : super();
  factory GetListResp() => create();
  factory GetListResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetListResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetListResp clone() => GetListResp()..mergeFromMessage(this);
  GetListResp copyWith(void Function(GetListResp) updates) => super.copyWith((message) => updates(message as GetListResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetListResp create() => GetListResp._();
  GetListResp createEmptyInstance() => create();
  static $pb.PbList<GetListResp> createRepeated() => $pb.PbList<GetListResp>();
  @$core.pragma('dart2js:noInline')
  static GetListResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetListResp>(create);
  static GetListResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<NameCardListItem> get result => $_getList(0);
}

class GetDetailReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetDetailReq', package: const $pb.PackageName('xcl'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GetDetailReq._() : super();
  factory GetDetailReq() => create();
  factory GetDetailReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDetailReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetDetailReq clone() => GetDetailReq()..mergeFromMessage(this);
  GetDetailReq copyWith(void Function(GetDetailReq) updates) => super.copyWith((message) => updates(message as GetDetailReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetDetailReq create() => GetDetailReq._();
  GetDetailReq createEmptyInstance() => create();
  static $pb.PbList<GetDetailReq> createRepeated() => $pb.PbList<GetDetailReq>();
  @$core.pragma('dart2js:noInline')
  static GetDetailReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDetailReq>(create);
  static GetDetailReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetDetailResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetDetailResp', package: const $pb.PackageName('xcl'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.O3)
    ..aOS(2, 'name')
    ..aOS(3, 'title')
    ..aOS(4, 'address')
    ..aOS(5, 'tel')
    ..hasRequiredFields = false
  ;

  GetDetailResp._() : super();
  factory GetDetailResp() => create();
  factory GetDetailResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDetailResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetDetailResp clone() => GetDetailResp()..mergeFromMessage(this);
  GetDetailResp copyWith(void Function(GetDetailResp) updates) => super.copyWith((message) => updates(message as GetDetailResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetDetailResp create() => GetDetailResp._();
  GetDetailResp createEmptyInstance() => create();
  static $pb.PbList<GetDetailResp> createRepeated() => $pb.PbList<GetDetailResp>();
  @$core.pragma('dart2js:noInline')
  static GetDetailResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDetailResp>(create);
  static GetDetailResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get address => $_getSZ(3);
  @$pb.TagNumber(4)
  set address($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAddress() => $_has(3);
  @$pb.TagNumber(4)
  void clearAddress() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get tel => $_getSZ(4);
  @$pb.TagNumber(5)
  set tel($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTel() => $_has(4);
  @$pb.TagNumber(5)
  void clearTel() => clearField(5);
}

