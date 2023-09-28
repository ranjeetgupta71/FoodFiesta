class SigninController < ApplicationController
  def new
    # Render the sign-in form
    @user = User.new
  end

  def index

  end

  def create
    user = User.find_by(email: params[:user][:email])

    if user && user.authenticate(params[:user][:password])
      session[:current_user_id] = user.id
      redirect_to root_path
    else
      flash.now[:alert] = 'Invalid email or password'
      render :new
    end
  end

  def destroy
    # Sign out the user
    session[:user_id] = nil
    redirect_to root_path
  end
end
