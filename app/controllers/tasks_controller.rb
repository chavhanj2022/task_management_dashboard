class TasksController < ApplicationController
  before_action :authorize_admin, only: [:destroy]
  before_action :set_task, only: %i[show edit update destroy assign_task update_status]
  

  def create
   
    @task = Task.new(task_params)
    @task.user_id = current_user.id
    binding.pry
    if @task.save
      redirect_to @task, notice: 'Task was successfully created.'
    else
      render :new
    end
  end

  def new
    @task = Task.new
  end

  def update
    if @task.update(task_params)
      redirect_to @task, notice: 'Task was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_url, notice: 'Task was successfully destroyed.'
  end

  def assign_task
    @task.update(assigned_to: params[:user_id])
    redirect_to @task, notice: 'Task assigned successfully.'
  end

  def update_status
    @task.update(status: params[:status])
    redirect_to @task, notice: 'Task status updated successfully.'
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :description, :deadline, :status, :assigned_to)
  end

  def authorize_admin
    return if current_user.admin?

    flash[:alert] = 'You are not authorized to perform this action.'
    redirect_to root_path
  end
end
