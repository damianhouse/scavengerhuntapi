module Api::V1 
  class AnswersController < ApiController
    before_action :set_answer, only: [:show, :update, :destroy]

    # GET /answers
    def index
      @answers = Answer.all

      render json: @answers
    end

    # GET /answers/1
    def show
      render json: @answer
    end

    # POST /answers
    def create
      @answer = Answer.create!(answer_params)
      if @answer
        render json: @answer
      else
        render json: @answer.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /answers/1
    def update
      if @answer.update(answer_params)
          render json: @answer
      else
          render json: @answer.errors, status: :unprocessable_entity
      end
    end

    # DELETE /answers/1
    def destroy
      @answer.destroy
      head 204
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_answer
        @answer = Answer.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def answer_params
        params.require(:answer).permit(:question_id, :player_id, :image, :lat, :long, :answerText, :hasItem, :verified)
      end
  end
end