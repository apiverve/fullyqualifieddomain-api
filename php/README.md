# Fully Qualified Domain API - PHP Package

Fully Qualified Domain Name is a simple tool for getting the fully qualified domain name (FQDN) of an IP. It returns the fully qualified domain name of the ip provided.

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

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/fullyqualifieddomain?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/fullyqualifieddomain?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/fullyqualifieddomain?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
