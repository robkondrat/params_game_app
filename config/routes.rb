Rails.application.routes.draw do
  namespace :api do
    get '/yer_name' => 'params_games#yer_name'
    get '/starts_with_a' => 'params_games#start_a'
    get '/guess_query' => 'params_games#guess_query'
  end
end
