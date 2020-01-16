ActiveAdmin.register Category do
  permit_params :name, :status

  scope :all
  scope :status_draft
  scope :status_pending
  scope :status_published
  scope :status_canceled
  
end
