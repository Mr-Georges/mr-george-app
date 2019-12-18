class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :title
      t.string :url
      t.integer :status
      t.integer :category

      t.timestamps
    end
  end
end
