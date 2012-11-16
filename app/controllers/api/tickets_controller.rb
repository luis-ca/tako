class Api::TicketsController < ApplicationController
  def index
    render json: Ticket.all.as_json
  end

  def create
    ticket = Ticket.create name: params[:name]
    render json: ticket.as_json
  end

end