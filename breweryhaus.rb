require 'sinatra'
require 'http'
require 'json'
require "rubygems"

#loading my yelp environment variable. You don't want to store secrets in plain text in github.com
token = ENV['YELP_API_KEY']

    #my endpoint(brewery) accepts the last part of the URL as the zipcode
    get '/brewery/:zipcode' do
      'Search breweries by zipcode'
      #NOTE: Internally I am calling the YELP API to perform the search
      uri = URI("https://api.yelp.com/v3/businesses/search?term=brewery&location=#{params['zipcode']}")
      
      response = HTTP.auth("Bearer #{token}").get(uri)
      response.parse["businesses"].to_json
    end