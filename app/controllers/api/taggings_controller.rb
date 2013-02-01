class Api::TaggingsController < ActionController::Base

  def index
    render json: Tagging.where(taggable: params[:scope_id])
  end

  def create
	tag = Tagging.create tag: params[:tag][:id], taggable: params[:taggable][:id]
	render json: tag.as_json
  end
end