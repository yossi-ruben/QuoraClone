class UsersController < ApplicationController
 
  def index
    if request.xhr?
      @users = User.all.map{|u| u.username}.sort
      render json: @users
    end
  end

  def new
    @user = User.new
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path 
  end

  def create
   @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    @q_and_senders = Hash.new {|h,k| h[k] = Array.new }
    q_rec = QuestionSent.where(receiver_id: params[:id])
    @answers = @user.answers

    unless q_rec.empty?
      
       q_rec.each{|q| @q_and_senders[q.question] << q.sender }
      
    end
    @questions_sent = QuestionSent.where(sender_id: params[:id])

  end

  def login
  end 

  def checklogin
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      redirect_to log_in_path
    end
  end


  def send_to_user
    qs = QuestionSent.new
    @question = Question.find_by(id: params[:question_id])
    @receiver = User.find_by(username: params[:username])
    @sender = User.find_by(id: session[:user_id])

    qs.question = @question
    qs.sender = @sender

    if @receiver
       qs.receiver = @receiver 
       qs.save!
    end
    binding.pry
    redirect_to root_path
  end


  private

   def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
