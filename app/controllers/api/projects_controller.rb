class Api::ProjectsController < ApplicationController

  def index
    render json: Project.all.as_json
  end

  def show
    project = Project.find params[:id]
    render json: project.as_json
  end

  def create
    render json:{ _id:Project.create!(name:"california roll")._id }

  rescue Mongoid::Errors::Validations => e
    render json: {}, status:406

  end

end