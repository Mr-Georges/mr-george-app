class AddStatusToHotels < ActiveRecord::Migration[6.0]
  def up
    execute <<-SQL
    CREATE TYPE hotel_status AS ENUM ('published', 'draft', 'pending', 'canceled');
  SQL
  add_column :hotels, :status, :hotel_status
  add_index :hotels, :status
  end

  def down
    remove_column :hotels, :status
    execute <<-SQL
      DROP TYPE hotel_status;
    SQL
  end

end
