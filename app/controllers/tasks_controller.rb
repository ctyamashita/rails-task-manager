class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy]

  def index
    # display all
    @tasks = Task.all
  end

  def show
    # display one
    # @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
    # form for create new task
  end

  def create
    # build and save instance
    @task = Task.new(task_params)
    if @task.save
      redirect_to task_path(@task)
    else
      render 'new.html.erb'
    end
  end

  def edit
    # @task = Task.find(params[:id])
    # form for edit
  end

  def update
    # @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to task_path(@task)
    else
      render 'edit.html.erb'
    end
  end

  def destroy
    # @task = Task.find(params[:id])
    @task.destroy
    # redirect_to 'somewhere'
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    # filter only the selected params
    params.require(:task).permit(:title, :details, :completed)
  end
end
