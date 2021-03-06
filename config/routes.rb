Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # namespaceを利用することで、 /api/v1/each_api 形式のrouting設定を行う
  namespace :api, format: 'json' do
    namespace :v1 do
      resources :tinder
      resources :omiai
    end
  end
  post '/callback' => 'api/v1/tinder#callback'
  post '/omiai/callback' => 'api/v1/omiai#callback'
  post '/omiai_suggest/callback' => 'api/v1/omiai_like#callback'
  post '/pairs_suggest/callback' => 'api/v1/pairs_like#callback'
end
