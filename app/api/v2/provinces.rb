module V2
  class Provinces < Grape::API
    helpers V1::SharedParams

    resources :provinces do
      desc "Provinces list"
      get "" do
        wrapper(Province.all)
      end
    end
  end
end
