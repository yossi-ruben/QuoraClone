class QuestionsController < ApplicationController
  
  def index 
    if request.xhr?
      @questions = Question.all.map{|q| q.title}.sort
      render json: @questions
    else
      @questions = Question.all
    end
  end

  def create

  end
  
  def unanswered
    @questions = Question.all.select{|q| q.answers.empty?}
  end

  def show 
    @question = Question.find_by(id: params[:id])
  end

  def questions_query
    # we are going to have to add a lot more weight to this route
    @question = Question.where(title: params[:question])

    if @question.empty?
      @q = Question.new
      @q.title = params[:question]

      if session[:user_id]
        @q.user_id = session[:user_id]
      else 
        @q.user_id = 1
      end

      @q.save!
      redirect_to root_path
    else
      redirect_to question_path(@question.first.id)
    end

  end

  def q_upvote
    q = Question.find_by(id: params[:question_id])
    u = User.find_by(id: session[:user_id])
    q.votes.create(user_id: u.id) if u 
    redirect_to root_path     
    # binding.pry
  end

end








#
