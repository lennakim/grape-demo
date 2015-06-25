module V1
  class Cities < Grape::API
    helpers V1::SharedParams

    resources :cities do
      get "" do
        cities = City.all

        wrapper(cities)
      end
    end
  end
end
