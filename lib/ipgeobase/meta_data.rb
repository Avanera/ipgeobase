# frozen_string_literal: true

require 'net/http'
require 'happymapper'

module Ipgeobase
  class MetaData
    IP_API = 'http://ip-api.com/xml/'

    def self.make_request(ip)
      uri = URI(IP_API + ip)
      response = Net::HTTP.get_response(uri)
      data = HappyMapper.parse(response.body)
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
