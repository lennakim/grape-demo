Rails.application.routes.draw do

  get 'doc/v2'

  get 'doc/v1'

  get 'home/index'

  mount Base => '/api' #api

  root "home#index"
end
