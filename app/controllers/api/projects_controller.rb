class Api::ProjectsController < ApplicationController

  def index
    render json: Project.all.as_json
  end

  def show
    project = Project.find params[:id]
    render json: project.as_json
  end

  def create

    params.require(:project).permit(:name)
    project = Project.create! params

    render json: project.as_json

  rescue Mongoid::Errors::Validations => e
    render json: {}, status: 406
  rescue => e
    render json: {}, status: 499
  end

end