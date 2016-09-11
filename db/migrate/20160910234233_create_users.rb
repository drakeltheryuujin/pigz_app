class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :latitude
      t.integer :longitude
      t.integer :push_notification_id

      t.timestamps null: false
    end
  end
end
