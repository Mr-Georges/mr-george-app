ActiveAdmin.register Hotel do
 permit_params :name, :phone_number, :city, :country_code, :postal_code, :state, :street_name, :status
  
end
