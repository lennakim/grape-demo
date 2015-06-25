module V1
  module Headers
    extend self

    def auth_headers(options = {})
      {
        'X-Token' => {
          description: "用户 X-Token",
          required: true
        }
      }
    end
  end
end
