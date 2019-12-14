class HotelsController < InheritedResources::Base

  private

    def hotel_params
      params.require(:hotel).permit(:name, :phone_number, :city, :country_code, :postal_code, :state, :street_name, :description)
    end

end
