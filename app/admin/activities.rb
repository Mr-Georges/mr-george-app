ActiveAdmin.register Activity do
  permit_params :title, :url, :status, :category
end
