class WorkoutExercisesController < ApplicationController
    def index
        @workout_exercises = WorkoutExercise.all
        render json: @workout_exercises
      end
    
      def show
        @workout_exercise = WorkoutExercise.find(params[:id])
        render json: @workout_exercise
      end
end
