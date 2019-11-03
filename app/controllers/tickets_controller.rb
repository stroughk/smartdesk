class TicketsController < ApplicationController

    before_action :set_ticket, only: [:edit, :update, :show, :destroy]

    def index
        @tickets = Ticket.all
    end

    def new
        @ticket = Ticket.new
    end

    def edit
       
    end

    def create
        @ticket = Ticket.new(ticket_params)
        if @ticket.save
            flash[:success] = "Ticket was sucessfully created"
            redirect_to ticket_path(@ticket)
        else
            render 'new'
        end
    end

    def update

        if @ticket.update(ticket_params)
            flash[:success] = "Ticket was successfully updated"
            redirect_to ticket_path(@ticket)
        else
            render 'edit'
        end
    end

    def show
  
    end

    def destroy
        @ticket.destroy
        flash[:danger] = "Ticket was successfully deleted"
        redirect_to tickets_path
    end

    private

    def set_ticket
        @ticket = Ticket.find(params[:id])
    end

    def ticket_params
        params.required(:ticket).permit(:title, :description)  #allow these via params
    end


end