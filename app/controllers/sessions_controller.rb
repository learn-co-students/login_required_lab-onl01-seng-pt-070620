class SessionsController < ApplicationController
    def create
        if session[:name].nil? && params[:name].empty?
            redirect_to "/login"
        elsif session[:name].nil? && !params[:name].empty?
            session[:name] = params[:name]
        end
    end

    def destroy
        if !session[:name].nil?
            session.delete :name
        end
    end
end