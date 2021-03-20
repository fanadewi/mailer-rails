Rails.application.routes.draw do
  root 'base#welcome'
  post '/message', to: 'base#sendMessage'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
