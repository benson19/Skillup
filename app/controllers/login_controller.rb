class LoginController < ApplicationController
    def new
      # gets the form
    end
  
    def create
        # check the information inside the form
        @user = User.find_by(email: params[:email])
        if @user #&& @user.authenticate(params[:email])
          session[:user_id] = @user.id
          redirect_to (@user)
        else
          flash[:message] = "Incorrect Email"
          redirect_to "/login"
        end
      end
    
      def destroy
       logout
       redirect_to("/login")
      end
   
  
  end


