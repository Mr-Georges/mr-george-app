ActiveAdmin.register Activity do
  permit_params :title, :url, :status, :category, :content, area_ids: []
  
  scope :all
  scope :status_draft
  scope :status_pending
  scope :status_published
  scope :status_canceled

  index do 
    selectable_column
    column :id
    column :area_ids
    column :title 
    column :content
    column :url 
    column :category
    column :status 
    column :created_at
    column :updated_at
    actions
  end

  show do
    panel "Activity details" do
      attributes_table_for activity do
        row :id
        row :areas_ids
        row :title 
        row :content
        row :url 
        row :category
        row :status 
        row :created_at
        row :updated_at
      end
    end
  end 

  form do |f|
    f.inputs do
      f.input :area_ids, 
        as: :check_boxes,
        multiple: true,
        collection: Area.all
      f.input :title
      f.input :content
      f.input :url
      f.input :category
      f.input :status
    end
    f.actions
  end

end




