class ActivitiesController < ApplicationController
    before_action :set_activity, only: %i[show edit update destroy]


    def index
        @activities = Activity.all
    end
    
    def show; end

    def new
        @activity = Activity.new
    end

    def edit; end
    
    def create
        @activity = Activity.new(activities_params)

        if @activity.save
            redirect_to @activity, notice: 'Activity was succcessfully created'
        else
            render :new
        end
    end

    def update
        if @activity.update(activities_params)
            redirect_to @activity, notice: 'Activity was successfully updated.'
          else
            render :edit
          end
    end

    def destroy
        @activity.destroy
        redirect_to activities_url, notice: 'Activity was susccesfully deleted'
    end

    private

    def set_activity
        @activity = Activity.find(params[:id])
    end

    def activities_params
        params.require(:activity).permit(:title, :content, :status, :group)
    end
end
