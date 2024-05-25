# frozen_string_literal: true

require "test_helper"

class TestIpgeobase < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Ipgeobase::VERSION
  end

  def test_it_returns_metadata
    stubbed_response = {
      :body => "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<query>\n  <status>success</status>\
      \n  <country>United States</country>\n  <countryCode>US</countryCode>\
      \n  <region>VA</region>\n  <regionName>Virginia</regionName>\n  <city>Ashburn</city>\
      \n  <zip>20149</zip>\n  <lat>39.03</lat>\n  <lon>-77.5</lon>\
        \n  <timezone>America/New_York</timezone>\n  <isp>Google LLC</isp>\
        \n  <org>Google Public DNS</org>\n  <as>AS15169 Google LLC</as>\
        \n  <query>8.8.8.8</query>\n</query>"
      }
    ip = '8.8.8.8'
    WebMock.stub_request(:get, "ip-api.com/xml/8.8.8.8").to_return(stubbed_response)

    expected_hash = {
      city: 'Ashburn',
      country: 'United States',
      countryCode: 'US',
      lat: 39.03,
      lon: -77.5
    }
    assert(Ipgeobase.lookup(ip) == expected_hash)
  end
end
