class UsersController < ApplicationController
    def index
      @users = User.all
      render json: @users
    end

    def signin 
      @user = User.find_by(email: params[:email])
      if @user && @user.authenticate(params[:password])
        render json: {name: @user.name, token: issue_token({id: @user.id}), id: @user.id}
      else 
        render json: {error: 'Username/password combination invalid.'}, status: 401
      end 
    end 

    def validate 
      @user = get_current_user
      if @user 
        render json: {name: @user.name, token: issue_token({id: @user.id}), id: @user.id, email: @user.email, fat: @user.fat, muscle: @user.muscle}
      else
        render json: {error: 'Username/password combination invalid.'}, status: 401
      end 
    end 

    def get_workout
      @user = get_current_user
      if @user
        render json: @user.workouts
      else
        render json: {error: 'Not a valid user.'}, status: 401
      end 
    end 
  
    def show
      @user = User.find(params[:id])
      render json: @user
    end

    def create 
      @user = User.new(name: params[:name], email: params[:email], password: params[:password])
      if @user.save 
        render json: @user 
      else 
        render json: {error: 'Unable to create user.'}, status: 400
      end 
    end

    def destroy
      @user = User.find_by(id: params[:id])
      if @user
        @user.destroy
        render json: {message: 'User deleted.'}
      else
        render json: {error: 'User not found.'}, status: 404
      end
    end

    def update
      @user = User.find_by(id: params[:id], name: params[:name], fat: params[:fat], muscle: params[:muscle], email: params[:email] )
      if @user
        @user.update(name: params[:name])
        render  json: @user
      else 
        render json: {error: 'User not found.'}, status: 404
      end
    end
end
