module V1
  class Cities < Grape::API
    helpers V1::SharedParams

    resources :cities do
      desc "分页"
      params do
        use :paginate
      end
      get "" do
        cities = paginate City.all

        present cities, with: V2::Entity::City
      end

      desc "创建城市"
      params do
        group :city, type: Hash do
          requires :name, desc: "城市名称"
          optional :pinyin, desc: "城市拼音"
        end
      end
      post "" do
        status 200

        permitted_params = ActionController::Parameters.new(params).require(:city).permit!

        result = City.new(permitted_params).save

        wrapper(result)
      end
    end
  end
end
