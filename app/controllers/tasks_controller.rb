class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def create
    Task.create(task_params)
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def show
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end

private
  def task_params
    params.require(:task).permit(:name, :detail, :completed)
  end

end
