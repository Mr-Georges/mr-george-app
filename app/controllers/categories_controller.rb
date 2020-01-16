class CategoriesController < ApplicationController
    before_action :set_category, only: %i[show edit update destroy]


    def index
        @categories = Category.all
    end
    
    def show; end

    def new
        @category = Category.new
    end

    def edit; end
    
    def create
        @category = Category.new(categories_params)
        if @category.save
            redirect_to @category, notice: 'Category was succcessfully created'
        else
            render :new
        end
    end

    def update
        if @category.update(categories_params)
            redirect_to @category, notice: 'Category was successfully updated.'
          else
            render :edit
          end
    end

    def destroy
        @category.destroy
        redirect_to categories_url, notice: 'Category was susccesfully deleted'
    end

    private

    def set_Category
        @category = Category.find(params[:id])
    end

    def categories_params
        params.require(:category).permit(:name, :status)
    end
end
