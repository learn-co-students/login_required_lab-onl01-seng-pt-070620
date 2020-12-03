class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to controller: 'sessions', action: 'new'
    else
      session[:name] = params[:name]
      # render 'secrets/show'
    end 
  end 

  def destroy
    if !session[:name]
      session[:name]
    else 
      session.delete :name
    end 
    redirect_to controller: 'sessions', action: 'new'
  end 

end
