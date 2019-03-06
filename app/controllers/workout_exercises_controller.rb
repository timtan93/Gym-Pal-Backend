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
        @workout_exercise  = WorkoutExercise.new(exercise_id: params[:exercise_id], workout_id: params[:workout_id], name: params[:name], sets: params[:sets], reps: params[:reps], rest: params[:rest], order: params[:order])
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
      def update
        @workout_exercise = WorkoutExercise.find_by(id: params[:id])
        if @workout_exercise
          @workout_exercise.update(name: params[:name], order: params[:order])
          render  json: @workout_exercise
        else 
          render json: {error: 'workout_exercise not found.'}, status: 404
        end
      end
end
