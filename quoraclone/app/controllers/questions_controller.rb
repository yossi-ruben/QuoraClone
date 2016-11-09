class QuestionsController < ApplicationController
  
  def index 
  	@questions = Question.all
  end

  def create

  end
  
  def unanswered_questions
    binding.pry
  end

  def show
    # binding.pry
    @question = Question.find_by(params[:id])
  end

  def questions_query
    # we are going to have to add a lot more weight to this route
    @question = Question.where(title: params[:question])
    binding.pry
    if @question.empty?
      redirect_to root_path
    else
      binding.pry
      redirect_to question_path(@question.first.id)
    end
  end



end
