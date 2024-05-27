# ipgeobase
Ipgeobase is a Ruby gem that provides a simple and convenient way to retrieve metadata about IP addresses.

![GitHub Actions Status](https://github.com/Avanera/ipgeobase/actions/workflows/main.yml/badge.svg)

## Installation

To install the gem and add it to your application's Gemfile, execute:

`$ bundle add ipgeobase`

If you are not using Bundler to manage dependencies, install the gem by executing:

`$ gem install ipgeobase`

You can add the Ipgeobase gem to your Gemfile by specifying it there. Open your Gemfile and add the following line:

`gem 'ipgeobase'`

Save the Gemfile, and then run:

`bundle install`

This command will install the Ipgeobase gem and any other gems specified in your Gemfile.

## Usage

To use the gem, you can retrieve metadata for a given IP address as follows:

## Development

```
require 'ipgeobase'

metadata = Ipgeobase.lookup('8.8.8.8')

puts metadata[:city]         # Output: Ashburn
puts metadata[:country]      # Output: United States
puts metadata[:countryCode]  # Output: US
puts metadata[:lat]          # Output: 39.03
puts metadata[:lon]          # Output: -77.5
```
## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/ipgeobase.
