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

  def show
    binding.pry

  end

  def a_upvote
    a = Answer.find_by(id: params[:answer_id])
    u = User.find_by(id: session[:user_id])
    a.votes.create(user_id: u.id) if u 
    binding.pry
    redirect_to root_path
    # binding.pry
  end



end
