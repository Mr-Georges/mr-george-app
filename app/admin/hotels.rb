ActiveAdmin.register Hotel do
 permit_params :name, :phone_number, :city, :country_code, :postal_code, :state, :street_name, :status
  
 scope :all
 scope :status_draft
 scope :status_pending
 scope :status_published
 scope :status_canceled
 
end
