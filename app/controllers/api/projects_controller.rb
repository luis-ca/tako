class Api::ProjectsController < ApplicationController

  def index
    render json: Project.all.as_json
  end

  def show
    project = Project.find params[:id]
    render json: project.as_json
  end

end