class UsersController < ApplicationController
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
    @user = User.find_by(id: session[:user_id])
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


  private

   def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
