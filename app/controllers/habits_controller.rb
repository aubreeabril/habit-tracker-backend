class HabitsController < ApplicationController
  before_action :find_habit, only: [:update, :show, :destroy]

  def index
    @habit = Habit.all
    render json: @habit
  end

  def show
    render json: @habit
  end

  def create
    @habit = Habit.create(habit_params)
    render json: @habit
  end

  def update
    @habit.update(habit_params)
    render json: @habit
  end

  def destroy
    @habit.destroy
  end

  private

  def habit_params
    params.require(:habit).permit(:title, :description)
  end

  def find_habit
    @habit = Habit.find(params[:id])
  end
end
