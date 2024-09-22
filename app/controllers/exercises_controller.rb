class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
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

  private
    def exercise_params
      params.require(:exercise).permit(:name, :exercise_category_id)
    end
end
