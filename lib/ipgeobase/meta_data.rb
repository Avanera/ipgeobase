# frozen_string_literal: true

require 'net/http'
require 'happymapper'

module Ipgeobase
  class MetaData
    IP_API = 'http://ip-api.com/xml/'

    def self.make_request(ip)
      uri = Addressable::URI.parse(IP_API + ip)
      response = Net::HTTP.get(uri.host, uri.path)
      data = HappyMapper.parse(response)
      {
        city: data.city,
        country: data.country,
        countryCode: data.country_code,
        lat: data.lat.to_f,
        lon: data.lon.to_f
      }
    end
  end
end
