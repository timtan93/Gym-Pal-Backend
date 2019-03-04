class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
      end
    
      def show
        @user = User.find(params[:id])
        render json: @user
      end

      def create 
        @user = User.new(name: params[:name])
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
        @user = User.find_by(id: params[:id])
        if @user
          @user.update(name: params[:name])
          render  json: @user
        else 
          render json: {error: 'User not found.'}, status: 404
        end
      end
end
