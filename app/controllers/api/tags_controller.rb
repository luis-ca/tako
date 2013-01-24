class Api::TagsController < ActionController::Base

  def index
    render json: Tag.all
  end

end