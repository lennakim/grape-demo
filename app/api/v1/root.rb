require 'grape-swagger'

module V1
  class Root < Grape::API
    helpers V1::Helpers

    version 'v1'
    format :json
    content_type :json, "application/json;charset=UTF-8"
    formatter :json, Grape::Formatter::Jbuilder

    before do
      header['Access-Control-Allow-Origin'] = '*'
      header['Access-Control-Request-Method'] = '*'
    end

    mount Examples
    mount Cities

    add_swagger_documentation base_path: "/api", api_version: 'v1', mount_path: 'doc', markdown: GrapeSwagger::Markdown::KramdownAdapter
  end
end
