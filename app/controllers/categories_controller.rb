class CategoriesController < ApplicationController
    before_action :require_agent, except:[:index, :show]

    def index
        @categories = Category.all
    end

    def new
        @category = Category.new
    end

    def create 
        @category = Category.new(category_params)
        if @category.save
            flash[:success] = "Smartdesk category was created successfully"
            redirect_to categories_path
        else
            render 'new'
        end
    end

    def show
        
    end

    private

    def category_params
        params.require(:category).permit(:name)
    end

    def require_agent
        if !logged_in? || (logged_in? and !current_user.agent?)
            flash[:danger] = "Only Smartdesk agents are permitted to do this."
            redirect_to categories_path
        end
    end


end