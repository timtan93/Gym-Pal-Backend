class WorkoutExercisesController < ApplicationController
    def index
        @workout_exercises = WorkoutExercise.all
        render json: @workout_exercises
      end
    
      def show
        @workout_exercise = WorkoutExercise.find(params[:id])
        render json: @workout_exercise
      end
      
      def create 
        @workout_exercise  = WorkoutExercise.new(name: params[:name], workout_id: params[:workout_id])
        if @workout_exercise.save 
          render json: @workout_exercise 
        else 
          render json: {error: 'Unable to add workout exercise to workout.'}, status: 400
        end 
      end

      def destroy
        @workout_exercise = WorkoutExercise.find_by(id: params[:id])
        if @workout_exercise
          @workout_exercise.destroy
          render json: {message: 'Workout Exercise deleted.'}
        else
          render json: {error: 'Workout Exercise not found.'}, status: 404
        end
      end
end
