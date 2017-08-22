module Overrides
  class SessionsController < DeviseTokenAuth::SessionsController
    def render_create_success
      render json: {
        data: @resource.as_json(methods: [:last_team, :last_player])
      }
    end
  end
end

