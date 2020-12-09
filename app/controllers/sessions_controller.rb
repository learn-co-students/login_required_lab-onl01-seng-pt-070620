class SessionsController < ApplicationController
    
    def show
        
      end
     
      def index
      end
     
      def create
        return redirect_to(controller: 'sessions',
        action: 'new') if !params[:name] || params[:name].empty?
        session[:name] = params[:name]
        redirect_to login_path
      end

      def destroy
        session.delete :name
      end
     
    #   private
     
    #   def require_login
    #     return head(:forbidden) unless session.include? :user_id
    #   end
end
