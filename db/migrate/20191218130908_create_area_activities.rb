class CreateAreaActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :area_activities do |t|
      t.belongs_to :area
      t.belongs_to :activity
      t.timestamps
    end
  end
end
