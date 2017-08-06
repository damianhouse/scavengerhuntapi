class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :update, :destroy]

  # GET /players
  def index
    @players = Player.all

    render json: @players
  end

  # GET /players/1
  def show
    render json: @player
  end

  # POST /players
  def create
    @player = Player.create!(player_params)
    if @player
      render :show, status: :created, location: v1_player_url(@player)
    else
      render json: @player.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /players/1
  def update
    if @player.update(player_params)
        render :show, status: :ok, location: v1_player_url(@player)
    else
        render json: @player.errors, status: :unprocessable_entity
    end
  end

  # DELETE /players/1
  def destroy
    @player.destroy
    head 204
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def player_params
      params.require(:player).permit(:team_id, :user_id)
    end
end
