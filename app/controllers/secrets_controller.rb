class SecretsController < ApplicationController
  before_action :require_login
  

  def show
  end

  private 

  def require_login
    # if !current_user
    #   return head(:forbidden)
    #   redirect_to controller: 'sessions', action: 'new'
    # else 
    #   render 'secrets/show'
    # end 
    unless session.include? :name
      redirect_to controller: 'sessions', action: 'new'
    end 
  end 

end
