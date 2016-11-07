class AnswersController < ApplicationController

  def new
  	@question = Question.find_by(id: params[:question_id])
  	@answer = Answer.new
  end

  def create 
  	@question = Question.find_by(id: params[:question_id])
  	@answer = Answer.new(body: params[:body], user_id: 1)
  	@question.answers << @answer

    redirect_to root_path

  end


end
