class DashboardsController < ApplicationController
  before_action :authenticate_user
  def index
    @tasks = Task.page(params[:page]).per(params[:length])
    #binding.pry
    respond_to do |format|
      format.html
    end
  end
end
