class SessionsController < ApplicationController
  def new
    if current_user
      redirect_to secrets_path
    end
  end

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to welcome_path
    else
      redirect_to root_path
    end
  end

  def welcome
    if current_user
      @user = current_user
    else
      redirect_to root_path
    end
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end
end