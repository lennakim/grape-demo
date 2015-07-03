module V2
  module Middleware
    class PostMiddleware
      def initialize(app)
        @app = app
      end

      def call(env)
        status, headers, bodies = @app.call(env)

        if env["REQUEST_METHOD"] == "POST"
          [200, headers, bodies]
        else
          [status, headers, bodies]
        end
      end
    end
  end
end