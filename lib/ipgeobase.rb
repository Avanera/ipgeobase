# frozen_string_literal: true

require_relative "ipgeobase/version"
require_relative "ipgeobase/meta_data"

module Ipgeobase
  class Error < StandardError; end

  def self.lookup(ip)
    MetaData.make_request(ip)
  end
end
