class WorksController < ApplicationController
  before_action :set_project

  def index
    @works = Work.by_project(@project)
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end
end
