class SessionsController < ApplicationController
  def new
  end

  def create
    # byebug

    if params[:username] == "" 

      redirect_to login_path
    else
      session[:username] = params[:username]
      
      redirect_to '/'
    end

  end

  def destroy
    session.delete :username
  end
    def user_params
      params.require(:name).permit(:username)
    end

end
