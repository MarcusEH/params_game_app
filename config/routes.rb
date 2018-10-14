Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/name' => 'games#name_check'
    get '/rand_url' => 'games#rand_num'
    get '/url_segment_number/:number' => 'games#rand_number'
  end

end
