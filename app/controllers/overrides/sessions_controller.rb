module Overrides
  class SessionsController < DeviseTokenAuth::SessionsController
    def render_create_success
      render json: {
        data: @resource.as_json(methods: :last_team_player_and_game_ids)
      }
    end
  end
end

