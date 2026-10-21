# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_fullyqualifieddomain"
  spec.version       = "1.2.2"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Fully Qualified Domain API - Ruby Client"
  spec.description   = "Fully Qualified Domain resolves an IP address to its fully qualified domain name using reverse DNS PTR records. It returns the host FQDN, base domain, TLD, subdomain, and domain level count."
  spec.homepage      = "https://apiverve.com/marketplace/fullyqualifieddomain?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/fullyqualifieddomain-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/fullyqualifieddomain"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
