/// Response models for the Fully Qualified Domain API.

/// API Response wrapper.
class FullyqualifieddomainResponse {
  final String status;
  final dynamic error;
  final FullyqualifieddomainData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  FullyqualifieddomainResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory FullyqualifieddomainResponse.fromJson(Map<String, dynamic> json) => FullyqualifieddomainResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? FullyqualifieddomainData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Fully Qualified Domain API.

class FullyqualifieddomainData {
  String? ip;
  String? baseDomain;
  String? fqdn;
  String? tld;
  String? subdomain;
  num? domainLevels;
  bool? detected;

  FullyqualifieddomainData({
    this.ip,
    this.baseDomain,
    this.fqdn,
    this.tld,
    this.subdomain,
    this.domainLevels,
    this.detected,
  });

  factory FullyqualifieddomainData.fromJson(Map<String, dynamic> json) => FullyqualifieddomainData(
      ip: json['ip'],
      baseDomain: json['baseDomain'],
      fqdn: json['fqdn'],
      tld: json['tld'],
      subdomain: json['subdomain'],
      domainLevels: json['domainLevels'],
      detected: json['detected'],
    );
}

class FullyqualifieddomainRequest {
  String ip;

  FullyqualifieddomainRequest({
    required this.ip,
  });

  Map<String, dynamic> toJson() => {
      'ip': ip,
    };
}
