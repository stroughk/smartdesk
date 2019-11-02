class TicketsController < ApplicationController
    def new
        @ticket = Ticket.new
    end

    def create
        @ticket = Ticket.new(ticket_params)
        @ticket.save
        redirect_to tickets_show(@ticket)
    end

    private
    def ticket_params
        params.required(:ticket).permit(:title, :description)  #allow these via params
    end


end