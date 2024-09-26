module Api
  class ExercisesController < ApplicationController
    def index
      @exercises = Exercise.all
      render json: @exercises
    end

    def show
      @exercise = Exercise.find(params[:id])
    end

    def new
      @exercise = Exercise.new
    end

    def create
      @exercise = Exercise.new(exercise_params)

      if @exercise.save
        flash[:notice] = "Exercise was successfully created."
        redirect_to @exercise
      else
        render :new, status: :unprocessable_entity
      end
    end

    def edit
      @exercise = Exercise.find(params[:id])
    end

    def update
      @exercise = Exercise.find(params[:id])

      if @exercise.update(exercise_params)
        flash[:notice] = "Exercise was successfully updated."
        redirect_to @exercise
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @exercise = Exercise.find(params[:id])
      @exercise.destroy

      redirect_to exercises_path, status: :see_other
    end

    private
      def exercise_params
        params.require(:exercise).permit(:name, :exercise_category_id)
      end
  end
end
