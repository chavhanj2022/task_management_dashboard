class TasksController < ApplicationController
  before_action :authorize_admin, only: [:destroy]
  before_action :set_task, only: [:show, :edit, :update, :destroy, :assign_task, :update_status]
  def destroy
    # Delete task logic
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

  def authorize_admin
    return if current_user.admin?

    flash[:alert] = 'You are not authorized to perform this action.'
    redirect_to root_path
  end
end
