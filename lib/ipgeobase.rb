# frozen_string_literal: true

require_relative "ipgeobase/version"
require_relative "ipgeobase/meta_data"

# The Ipgeobase module provides functionality to fetch metadata about IP
# addresses. It uses the MetaData class to make a request and retrieve
# information about a given IP address.
#
# Example:
#   ip_info = Ipgeobase.lookup('8.8.8.8')
#   puts ip_info[:city]     # => "Ashburn"
#   puts ip_info[:country]  # => "United States"
#
module Ipgeobase
  class Error < StandardError; end

  def self.lookup(ip)
    MetaData.make_request(ip)
  end
end
