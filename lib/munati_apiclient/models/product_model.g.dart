// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductRequest _$ProductRequestFromJson(Map<String, dynamic> json) =>
    ProductRequest(
      server_key: json['server_key'] as String,
      user_id: json['user_id'] as String?,
      limit: json['limit'] as String?,
      offset: json['offset'] as String?,
      categoryId: json['categoryId'] as String?,
      keyword: json['keyword'] as String?,
      enabled: json['enabled'] as bool?,
      distance: json['distance'] as String?,
    );

Map<String, dynamic> _$ProductRequestToJson(ProductRequest instance) =>
    <String, dynamic>{
      'server_key': instance.server_key,
      'user_id': instance.user_id,
      'limit': instance.limit,
      'categoryId': instance.categoryId,
      'keyword': instance.keyword,
      'distance': instance.distance,
      'offset': instance.offset,
      'enabled': instance.enabled,
    };
