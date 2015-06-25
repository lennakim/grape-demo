module V1
  class Examples < Grape::API
    resources :examples do
      desc "get method"
      get "" do
        {method: :get}
      end

    end
  end
end
