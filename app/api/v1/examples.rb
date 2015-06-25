module V1
  class Examples < Grape::API
    resources :examples do
      desc "get method"
      get "" do
        {method: :get}
      end

      desc "post method"
      post "" do
        {method: :post, extends: "post status 默认 201" }
      end

    end
  end
end
