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

      desc "post status 202"
      post "post_202" do
        status 202

        wrapper({status: 202})
      end
    end
  end
end
