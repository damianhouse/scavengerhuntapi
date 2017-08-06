class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :update, :destroy]

  # GET /teams
  def index
    @teams = Team.all

    render json: @teams
  end

  # GET /teams/1
  def show
    render json: @team
  end

  # POST /teams
  def create
    @team = Team.create!(team_params)
    if @team
      render :show, status: :created, location: v1_team_url(@team)
    else
      render json: @team.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /teams/1
  def update
    if @team.update(team_params)
        render :show, status: :ok, location: v1_team_url(@team)
    else
        render json: @team.errors, status: :unprocessable_entity
    end
  end

  # DELETE /teams/1
  def destroy
    @team.destroy
    head 204
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def team_params
      params.require(:team).permit(:game_id, :score, :name)
    end
end
