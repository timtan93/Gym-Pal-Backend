class WorkoutsController < ApplicationController
    def index
        @workouts = Workout.all
        render json: @workouts
      end
    
      def show
        @workout = Workout.find(params[:id])
        render json: @workout
      end

      def create 
        @workout = Workout.new(title: params[:title], user_id: params[:user_id])
        if @workout.save 
          render json: @workout 
        else 
          render json: {error: 'Unable to create workout.'}, status: 400
        end 
      end

      def destroy
        @workout = Workout.find_by(id: params[:id])
        if @workout
          @workout.destroy
          render json: {message: 'Workout deleted.'}
        else
          render json: {error: 'Workout not found.'}, status: 404
        end
      end

      def update 
          @workout = Workout.find_by(id: params[:id])
          if @workout
            @workout.update(title: params[:name],workoutexercises: params[:workoutexercises] )
            render  json: @workout
          else 
            render json: {error: 'User not found.'}, status: 404
          end
        end
    
end
