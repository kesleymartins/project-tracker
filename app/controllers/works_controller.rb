class WorksController < ApplicationController
  before_action :set_project
  before_action :set_work, only: %i[finish]

  def index
    @works = Work.by_project(@project)
  end

  def create
    work = @project.works.new

    work.save

    redirect_to @project
  end

  def finish
    @work.finish!

    @work.save

    redirect_to @project
  end

  private

  def set_work
    @work = Work.find(params[:id])
  end

  def set_project
    @project = Project.find(params[:project_id])
  end
end
