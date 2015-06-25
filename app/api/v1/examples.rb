module V1
  class Examples < Grape::API
    helpers V1::SharedParams

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

      desc "触发 AuthorizationError"
      post "/user" do
        raise AuthorizationError
      end

      desc "分页", {
        notes: <<-ZQW
          ## MRAK
          引入 SharedParams `helpers V1::SharedParams`
          在 params 中是使用 paginate

        ZQW
      }
      params do
        use :paginate
      end
      get "/paginate" do
        page = params[:page].to_i
        per_page = params[:per_page].to_i

        wrapper({page: page, per_page: per_page })
      end

      desc "获取 header", {
        headers: Headers.auth_headers
      }
      post "header" do
        status 200

        request = Grape::Request.new(env)
        headers = request.headers
        token = headers['X-Token'].to_s

        wrapper({token: token})
      end

    end
  end
end
