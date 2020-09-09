class AnswersController < ApplicationController
  before_action :set_question

  def index
    @answers = @question.answers
  end

  private 

  def set_question
    @question = Question.find(params[:question_id]) or not_found
  end

end
