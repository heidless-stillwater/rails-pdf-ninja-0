require 'httparty'

class ApodApi
  include HTTParty
  # base_uri 'https://api.openweathermap.org/data/2.5'
  # https://api.nasa.gov/planetary/apod?api_key=DAbe8pRQBBRGzIhyQpaZsKymOFr9QHfjs2xpqFAp
  
  base_uri 'https://api.nasa.gov/planetary'
  
  def initialize(api_key)
    @options = { query: { appid: api_key } }
  end

  def apod_daily
    self.class.get("/apod", @options)
  end

end