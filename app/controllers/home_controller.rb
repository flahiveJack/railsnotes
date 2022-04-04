class HomeController < ApplicationController
  def index
  end

  def weather
    @about_me = "My Name is Jack Flahive"
    require 'net/http'
    require 'json'

    #url = 'https://api.weatherbit.io/v2.0/current?lat=53.350140&lon=-6.266155&key=ff1651781b3d4a64bc2e746d57be403f&include=minutely'
    @url = 'https://api.openweathermap.org/data/2.5/weather?lat=53.350140&lon=-6.266155&appid=4ba2c6f250377c2c555b1dee609bfab4'
    #url = 'http://api.weatherapi.com/v1/forecast.json?key=c56474fb02654dcc88d140315220104&q=Dublin&days=1&aqi=no&alerts=no'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @forecast = JSON.parse(@response)




   def news
    require 'net/http'
    require 'json'

    #@url = 'https://api.weatherbit.io/v2.0/current?lat=53.350140&lon=-6.266155&key=ff1651781b3d4a64bc2e746d57be403f&include=minutely'
    @url = 'https://newsapi.org/v2/top-headlines?country=ie&apiKey=bb9bd291b5344a7b9788a0b3df5ce0f0'
    #@url = 'http://api.weatherapi.com/v1/forecast.json?key=c56474fb02654dcc88d140315220104&q=Dublin&days=1&aqi=no&alerts=no'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @news = JSON.parse(@response)
    

    




end





  end
  
end
