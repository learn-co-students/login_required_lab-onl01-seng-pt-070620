class SessionsController < ApplicationController
    def new
    end

    def create
        # if params[:name] == nil || params[:name] == ""
        #     redirect_to login_path
        # else
        #     session[:name] = params[:name]
        #     redirect_to '/'
        # end
        return redirect_to login_path  if !params[:name] || params[:name].empty?
        session[:name] = params[:name]
        redirect_to login_path
    end

    def destroy
        session.delete :name
    end
end
