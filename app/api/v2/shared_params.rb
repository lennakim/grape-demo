module V2
  module SharedParams
    extend Grape::API::Helpers

    params :paginate do
      optional :page,     type: Integer, desc: "第n页, 默认显示第1页"
      optional :per_page, type: Integer, desc: "每页显示数量, 默认25"
    end
  end
end
