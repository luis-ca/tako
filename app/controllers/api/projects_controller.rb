class Api::ProjectsController < ApplicationController

  def index
    render json: Project.all.as_json
  end

end