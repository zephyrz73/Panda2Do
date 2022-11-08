module Api
  class UsersController < ApplicationController
      protect_from_forgery with: :null_session
      before_action :set_user, only: %i[ show edit update destroy ]

      # GET /users or /users.json
      def index
        @users = User.all
        render json: @users
      end

      # GET /users/1 or /users/1.json
      def show
        @user = User.find(params[:id])
        render json: @user
      end

      # GET /users/new
      def new
        @user = User.new
      end

      # GET /users/1/edit
      def edit
      end

      # POST /users or /users.json
      def create
        @user = User.new(user_params)

        respond_to do |format|
          if @user.save
            format.html { redirect_to user_url(@user), notice: "User was successfully created." }
            format.json { render json: @user, status: :created, location: api_users_url(@user) }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @user.errors, status: :unprocessable_entity }
          end
        end
      end

      # PATCH/PUT /users/1 or /users/1.json
      def update
        respond_to do |format|
          if @user.update(user_params)
            format.html { redirect_to user_url(@user), notice: "User was successfully updated." }
            format.json { render json: @user, status: :ok, location: api_user_url(@user) }
          else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @user.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /users/1 or /users/1.json
      def destroy
        @user.destroy

        respond_to do |format|
          format.html { redirect_to users_url, notice: "User was successfully destroyed." }
          format.json { head :no_content }
        end
      end

      # def login
      #     user = User.find_by(email: params[:session][:email], password: params[:session][:password])
      #     if user
      #         session[:user_id] = user.id
      #         redirect_to root_path
      #     else
      #         # TODO: add a popup message
      #         flash.now[:danger] = 'Bad email/password combination. Try again.'
      #         render 'login_page'
      #     end
      # end

      # def login_page
      # end

      # def delete
      #     session.delete(:user_id)
      #     @current_user = nil
      #     redirect_to root_path
      # end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_user
          @user = User.find_by(id: params[:id])
          if @user == nil
            render :file => "#{Rails.root}/public/404.html",  :status => 404
          end
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def user_params

          params.permit(:name, :email, :password, :points)
        end
    end
  end