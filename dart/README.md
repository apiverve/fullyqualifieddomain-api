# Fully Qualified Domain API - Dart/Flutter Client

Fully Qualified Domain resolves an IP address to its fully qualified domain name using reverse DNS PTR records. It returns the host FQDN, base domain, TLD, subdomain, and domain level count.

[![pub package](https://img.shields.io/pub/v/apiverve_fullyqualifieddomain.svg)](https://pub.dev/packages/apiverve_fullyqualifieddomain)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Fully Qualified Domain API](https://apiverve.com/marketplace/fullyqualifieddomain?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_fullyqualifieddomain: ^1.2.4
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_fullyqualifieddomain/apiverve_fullyqualifieddomain.dart';

void main() async {
  final client = FullyqualifieddomainClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'ip': '199.30.24.0'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "ip": "199.30.24.0",
    "baseDomain": "msn.com",
    "fqdn": "msnbot-199-30-24-0.search.msn.com",
    "tld": "com",
    "subdomain": "msnbot-199-30-24-0.search",
    "domainLevels": 5,
    "detected": true
  }
}
```

## API Reference

- **API Home:** [Fully Qualified Domain API](https://apiverve.com/marketplace/fullyqualifieddomain?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/fullyqualifieddomain](https://docs.apiverve.com/ref/fullyqualifieddomain?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
