class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Thank you for signing in"
      redirect_to user_url(user)
    else
      flash[:notice] = "Incorrect email or password.  Please try again."
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to root_url, :notice => "You have logged out"
  end

end
