class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)

    if @workout.save
      flash[:notice] = "Workout was successfully created."
      redirect_to @workout
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @workout = Workout.find(params[:id])
    @workout.destroy

    redirect_to workouts_path, status: :see_other
  end

  private
    def workout_params
      params.require(:workout).permit(:name, :user_id)
    end
end
