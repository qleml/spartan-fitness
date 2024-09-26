module Api
  class WorkoutsController < ApplicationController
    def index
      @workouts = Workout.includes(:user)
      render json: @workouts.as_json(include: { user: { only: :username } })
    end

    def show
      @workout = Workout.find(params[:id])
      @exercises = @workout.exercises
    end

    def new
      @workout = Workout.new
    end

    def create
      @workout = Workout.new(workout_params)

      if @workout.save
        create_workout_exercises(@workout, params[:workout][:exercise_ids])
        redirect_to @workout, notice: "Workout was successfully created."
      else
        render :new
      end
    end

    def destroy
      @workout = Workout.find(params[:id])
      @workout.destroy

      redirect_to workouts_path, status: :see_other
    end

    private

    def workout_params
      params.require(:workout).permit(:user_id)
    end

    def create_workout_exercises(workout, exercise_ids)
      exercise_ids.reject(&:blank?).each do |exercise_id|
        WorkoutExercise.create(workout_id: workout.id, exercise_id: exercise_id)
      end
    end
  end
end
