class CreateCops < ActiveRecord::Migration
  def change
    create_table :cops do |t|
      t.float :latitude, null: false
      t.float :longitude, null: false
    end
  end
end
