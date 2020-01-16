ActiveAdmin.register Activity do
  permit_params :title, :url, :status, :group, :content, area_ids: []
  
  scope :all
  scope :status_draft
  scope :status_pending
  scope :status_published
  scope :status_canceled

  index do 
    selectable_column
    column :id
    column :areas do |activity|
      activity.areas.map { |aa| aa.name}.join(", ")
    end
    column :title 
    column :content
    column :url 
    column :group
    column :status 
    column :created_at
    column :updated_at
    actions
  end

  show do
    panel "Activity details" do
      attributes_table_for activity do
        row :id
        row :areas do |activity|
          activity.areas.map { |aa| aa.name}.join(", ")
        end
        row :title 
        row :content
        row :url 
        row :group
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
      f.input :group
      f.input :status
    end
    f.actions
  end

end




