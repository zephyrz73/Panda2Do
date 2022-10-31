class UsersController < ApplicationController
    def login
        user = User.find_by(email: params[:session][:email], password: params[:session][:password])
        if user
            session[:user_id] = user.id
            redirect_to root_path
        else
            # TODO: add a popup message
            flash.now[:danger] = 'Bad email/password combination. Try again.'
            render 'login_page'
        end
    end
        
    def login_page
    end
        
    def delete
        session.delete(:user_id)
        @current_user = nil
        redirect_to root_path
    end
end