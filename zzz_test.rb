require 'net/http'
require 'json'
require 'http'


token = ENV['YELP_API_KEY']


uri = URI("https://api.yelp.com/v3/businesses/search?term=brewery&location=22151")
response = HTTP.auth("Bearer #{token}").get(uri)
puts response.parse["businesses"]