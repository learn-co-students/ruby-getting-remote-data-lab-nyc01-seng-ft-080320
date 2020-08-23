# Write your code here
require 'open-uri'
require 'net/http'
require 'json'

URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

class GetRequester

    def initialize(url)
        @url = url
    end

    def get_response_body
        # sends a Get request to the URL passed into initialize method.
        # return body of the response
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body 
    end

    def parse_json
        # use get_response_body to send a request and return a Ruby Array of Hash made from data we got from request.
    JSON.parse(get_response_body)
    end
end
