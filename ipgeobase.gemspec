# frozen_string_literal: true

require_relative "lib/ipgeobase/version"

Gem::Specification.new do |spec|
  spec.name = "ipgeobase"
  spec.version = Ipgeobase::VERSION
  spec.authors = ["Arina Zaitseva"]
  spec.email = ["avanero@bk.ru"]

  spec.summary = "provides a simple and convenient way to retrieve metadata about IP addresses"
  spec.description = "Ipgeobase is a Ruby gem that provides a simple and convenient way to \
retrieve metadata about IP addresses. With its help, you can easily find out the following \
information for a given IP address:

    city — the city
    country — the country
    countryCode — the country code
    lat — the latitude
    lon — the longitude

This gem is useful for projects that require determining the location of users based on their \
IP addresses, such as traffic analysis, content personalization, or security enforcement."
  spec.homepage = "https://github.com/Avanera/ipgeobase"
  spec.required_ruby_version = Gem::Requirement.new(">= 3.0.0")

  spec.metadata["allowed_push_host"] = "https://github.com/Avanera/ipgeobase"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Avanera/ipgeobase"
  spec.metadata["changelog_uri"] = "https://github.com/Avanera/ipgeobase"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
