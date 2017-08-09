module Api::V1
  class ScoresController < ApiController
    before_action :set_score, only: [:show, :update, :destroy]

    # GET /scores
    def index
      @scores = Score.all

      render json: @scores
    end

    # GET /scores/1
    def show
      render json: @score
    end

    # POST /scores
    def create
      @score = Score.create!(score_params)
      if @score
        render :show, status: :created, location: v1_score_url(@score)
      else
        render json: @score.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /scores/1
    def update
      if @score.update(score_params)
          render :show, status: :ok, location: v1_score_url(@score)
      else
          render json: @score.errors, status: :unprocessable_entity
      end
    end

    # DELETE /scores/1
    def destroy
      @score.destroy
      head 204
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_score
        @score = Score.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def score_params
        params.require(:score).permit(:team_id, :answer_id, :score)
      end
  end
end