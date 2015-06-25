class DocController < ApplicationController

  layout "api"
  http_basic_authenticate_with name: "grape", password: "demo", only: :v2

  def v1
  end

  def v2
  end

end
