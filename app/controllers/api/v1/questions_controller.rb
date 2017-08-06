class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :update, :destroy]

  # GET /questions
  def index
    @questions = Question.all

    render json: @questions
  end

  # GET /questions/1
  def show
    render json: @question
  end

  # POST /questions
  def create
    @question = Question.create!(question_params)
    if @question
      render :show, status: :created, location: v1_question_url(@question)
    else
      render json: @question.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /questions/1
  def update
    if @question.update(question_params)
        render :show, status: :ok, location: v1_question_url(@question)
    else
        render json: @question.errors, status: :unprocessable_entity
    end
  end

  # DELETE /questions/1
  def destroy
    @question.destroy
    head 204
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def question_params
      params.require(:question).permit(:game_id, :pointValue, :questionText, :isSponser, :isImg, :isShortAns, :isItem, :isVariable, :isBonus)
    end
end