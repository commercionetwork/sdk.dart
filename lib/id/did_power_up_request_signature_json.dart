import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'did_power_up_request_signature_json.g.dart';

/// Represents the JSON object that should be signed and put
/// inside a [DidPowerUpRequestPayload] as the signature value.
@JsonSerializable()
class DidPowerUpRequestSignatureJson extends Equatable {
  @JsonKey(name: "sender_did")
  final String senderDid;
  @JsonKey(name: "pairwise_did")
  final String pairwiseDid;
  @JsonKey(name: "timestamp")
  final String timestamp;

  DidPowerUpRequestSignatureJson({
    @required this.senderDid,
    @required this.pairwiseDid,
    @required this.timestamp,
  })  : assert(senderDid != null),
        assert(pairwiseDid != null),
        assert(timestamp != null);

  @override
  List<Object> get props {
    return [senderDid, pairwiseDid, timestamp];
  }

  factory DidPowerUpRequestSignatureJson.fromJson(Map<String, dynamic> json) =>
      _$DidPowerUpRequestSignatureJsonFromJson(json);

  Map<String, dynamic> toJson() => _$DidPowerUpRequestSignatureJsonToJson(this);
}
