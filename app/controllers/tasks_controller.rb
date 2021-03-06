class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(title: params[:task]["title"], details: params[:task]["details"])
    if @task.save
      redirect_to task_path(@task)
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])

    if @task.update(give_permission)
      redirect_to task_path(@task)
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    redirect_to tasks_path if @task.destroy
  end





  private

  def give_permission

    params.require(:task).permit(:title, :details, :completed)

  end








end
