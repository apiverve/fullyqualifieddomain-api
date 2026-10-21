# Fully Qualified Domain API - PHP Package

Fully Qualified Domain resolves an IP address to its fully qualified domain name using reverse DNS PTR records. It returns the host FQDN, base domain, TLD, subdomain, and domain level count.

## Installation

Install via Composer:

```bash
composer require apiverve/fullyqualifieddomain
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Fullyqualifieddomain\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['ip' => '199.30.24.0']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Fullyqualifieddomain\Client;
use APIVerve\Fullyqualifieddomain\Exceptions\APIException;
use APIVerve\Fullyqualifieddomain\Exceptions\ValidationException;

try {
    $response = $client->execute(['ip' => '199.30.24.0']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/fullyqualifieddomain?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/fullyqualifieddomain?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/fullyqualifieddomain?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
