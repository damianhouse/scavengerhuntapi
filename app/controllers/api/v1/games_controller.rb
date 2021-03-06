module Api::V1
  class GamesController < ApiController
    before_action :set_game, only: [:show, :update, :destroy]

    # GET /games
    def index
      @games = Game.all

      render json: @games
    end

    # GET /games/1
    def show
      render json: @game
    end

    # POST /games
    def create
      @game = Game.create!(game_params)
      if @game
        render json: @game
      else
        render json: @game.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /games/1
    def update
      if @game.update(game_params)
          render json: @game
      else
          render json: @game.errors, status: :unprocessable_entity
      end
    end

    # DELETE /games/1
    def destroy
      @game.destroy
      head 204
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_game
        @game = Game.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def game_params
        params.require(:game).permit(:name, :startTime, :endTime)
      end
  end
end