class QuestionsController < ApplicationController
  before_action :set_question, only: [:show]

  def index
    @questions = Question.all
  end

  def show
    @answers = @question.answers
    @topics = @question.topics
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id]) or not_found
    end

    ## Never trust parameters from the scary internet, only allow the white list through.
    #def question_params
      #params.require(:question).permit(:title)
    #end
end
