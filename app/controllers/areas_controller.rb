class AreasController < ApplicationController
    before_action: set_area, only %i[show edit update destroy]

    def index
        @areas = Area.all
    end
    
    def show; end

    def new
        @area = Area.new
    end

    def edit; end
    
    def create
        @area = Area.new(areas_params)

        if @area.save
            redirect_to @area, notice: 'Area was succcessfully created'
        else
            render :new
        end
    end

    def update
        if @area.update(areas_params)
            redirect_to @area, notice: 'Area was successfully updated.'
          else
            render :edit
          end
    end

    def destroy
        @area.destroy
        redirect_to areas_url, notice: 'Area was susccesfully deleted'
    end

    private

    def set_area
        @areas = Area.find(params[:id])
    end

    def areas_params
        params.require(:area).permit(:name, :description, :status)
    end


end
