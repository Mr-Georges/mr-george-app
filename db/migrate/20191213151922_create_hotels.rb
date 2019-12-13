class CreateHotels < ActiveRecord::Migration[6.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :phone_number
      t.string :city
      t.string :country_code
      t.string :postal_code
      t.string :state
      t.string :street_name

      t.timestamps
    end
  end
end
