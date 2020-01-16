class ChangeColunmNameFromCategoryToType < ActiveRecord::Migration[6.0]
  def change
    rename_column :activities, :category, :group
  end
end
