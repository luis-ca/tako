class Api::TicketsController < ApplicationController
  def index
    render json: Ticket.all.as_json
  end
end