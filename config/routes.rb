Rails.application.routes.draw do
  get "/" => "weathers#index"
  get "/dailyforecasts" => "weathers#index"
end
