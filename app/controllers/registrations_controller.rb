class RegistrationsController<ApplicationController
  def new 
    @user = User.new
  end

  def create
    flash[:success] = "Thanks for signing up!"
    # flash[:notice] = "Thanks for signing up!"
    redirect_to root_path

  end

end