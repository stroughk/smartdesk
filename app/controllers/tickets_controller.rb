class TicketsController < ApplicationController

    before_action :set_ticket, only: [:edit, :update, :show, :destroy]
    before_action :require_user, except: [:index, :show]    
    before_action :require_same_user, only: [:edit, :update, :destroy]

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
        @ticket.user = current_user
        if @ticket.save
          flash[:success] = "Ticket was created successfully"
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
        params.required(:ticket).permit(:title, :description, category_ids: [])  
    end

    def require_same_user
        if current_user != @ticket.user and !current_user.agent?
        flash[:danger] = "You can only edit or delete your own tickets"
        redirect_to root_path
        end
    end

end