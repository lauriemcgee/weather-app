class WeathersController < ApplicationController
  def index
    @data = Unirest.get("https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22Logan%20Square%2C%20IL%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys").body
    @forecast = @data["query"]["results"]["channel"]["item"]["forecast"]

    render "index.html.erb"
  end
end
