class Api::TicketsController < ApplicationController

  def index
    render json: Ticket.order_by(:number.asc).all.as_json
  end

  def create
    ticket = Ticket.create name: params[:name]
    render json: ticket.as_json
  end

  def update
    ticket = Ticket.find params[:id]
    ticket.update_attributes params.require(:ticket).permit(:name)
    render json: ticket.as_json 
  end

end