class Api::TagsController < ActionController::Base

  def index
  	taggings = Tagging.where(taggable: params[:scope_id])
    render json: taggings.map {|tagging| Project.find tagging.tag }
  end
end