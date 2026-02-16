/// Response models for the Fully Qualified Domain API.

/// API Response wrapper.
class FullyqualifieddomainResponse {
  final String status;
  final dynamic error;
  final FullyqualifieddomainData? data;

  FullyqualifieddomainResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory FullyqualifieddomainResponse.fromJson(Map<String, dynamic> json) => FullyqualifieddomainResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? FullyqualifieddomainData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Fully Qualified Domain API.

class FullyqualifieddomainData {
  String? ip;
  String? baseDomain;
  String? fqdn;
  bool? detected;

  FullyqualifieddomainData({
    this.ip,
    this.baseDomain,
    this.fqdn,
    this.detected,
  });

  factory FullyqualifieddomainData.fromJson(Map<String, dynamic> json) => FullyqualifieddomainData(
      ip: json['ip'],
      baseDomain: json['baseDomain'],
      fqdn: json['fqdn'],
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
