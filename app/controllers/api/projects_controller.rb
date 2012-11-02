class Api::ProjectsController < ApplicationController

  def index
    render json: Project.all.as_json
  end

  def show
    project = Project.find params[:id]
    render json: project.as_json
  end

  def create

    params_for_project = params.require(:project).permit(:name)
    project = Project.create!(params_for_project)

    render json: project

  rescue Mongoid::Errors::Validations => e
    render json: { :error => 'project already exists' }, status:406
  end

end