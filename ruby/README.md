# Fully Qualified Domain API - Ruby Gem

Fully Qualified Domain resolves an IP address to its fully qualified domain name using reverse DNS PTR records. It returns the host FQDN, base domain, TLD, subdomain, and domain level count.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_fullyqualifieddomain'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_fullyqualifieddomain
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_fullyqualifieddomain'

# Initialize the client
client = APIVerve::Fullyqualifieddomain::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ ip: "199.30.24.0" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ ip: "199.30.24.0" })
  puts response["data"]
rescue APIVerve::Fullyqualifieddomain::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Fullyqualifieddomain::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Fullyqualifieddomain::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/fullyqualifieddomain?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/fullyqualifieddomain?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/fullyqualifieddomain?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
