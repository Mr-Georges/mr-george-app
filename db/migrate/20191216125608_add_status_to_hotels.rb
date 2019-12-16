class AddStatusToHotels < ActiveRecord::Migration[6.0]
  def change
    add_column :hotels, :status, :integer
  end

end