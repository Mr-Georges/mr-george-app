ActiveAdmin.register Area do
  permit_params :name, :description, :status

  scope :all
  scope :status_draft
  scope :status_pending
  scope :status_published
  scope :status_canceled
  
end
