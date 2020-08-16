# Write your code here
require 'net/http'
require 'uri'
require 'json'
require 'pry'
class GetRequester
    attr_reader :uri, :response
    def initialize(url)
        @uri = URI.parse(url)
        @response = Net::HTTP.get_response(self.uri)
    end

    def get_response_body
        self.response.body
    end

    def parse_json
        JSON.parse(self.get_response_body)
    end
end