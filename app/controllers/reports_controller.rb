class ReportsController < ApplicationController
  def task_completion_report
    @completion_data = Task.group(:status).count
  end

  def team_performance_report
    @performance_data = User.includes(:tasks).group(:name).average('tasks.completion_time')
  end
end
