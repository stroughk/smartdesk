class TicketsController < ApplicationController
    def new
        @ticket = Ticket.new
    end

    def create
        @ticket = Ticket.new(ticket_params)
        if @ticket.save
            flash[:notice] = "Ticket was sucessfully created"
            redirect_to ticket_path(@ticket)
        else
            render 'new'
        end
    end

    def show
        @ticket = Ticket.find(params[:id])
    end

    private
    def ticket_params
        params.required(:ticket).permit(:title, :description)  #allow these via params
    end


end