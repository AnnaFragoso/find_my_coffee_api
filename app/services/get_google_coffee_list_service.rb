require 'rest-client'
require 'json'

class GetGoogleCoffeeListService
  def initialize(latitude, longitude)
    print "TO NO SERVIÇOOOOOOOOOOOOOOOO"
    @latitude = latitude
    @longitude = longitude
  end

  def call
    puts "ENTREI NO CALL"
    begin
      key = "key=#{Rails.application.credentials.google_secret_key}"
      puts key
      location = "location=#{@latitude},#{@longitude}"
      radius = "radius=5000"
      base_url = "https://maps.googleapis.com/maps/api/place/textsearch/json?query=coffee+shops&#{location}&#{radius}&#{key}"
      response = RestClient.get base_url
      JSON.parse(response.body)
    rescue RestClient::ExceptionWithResponse =>
      puts "ERROOOOOOOOOOOOOOOOOOO"
      e.response
    end
  end