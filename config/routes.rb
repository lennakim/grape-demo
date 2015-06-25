Rails.application.routes.draw do

  get 'doc/v2'

  get 'doc/v1'

  get 'home/index'

  root "home#index"
end
