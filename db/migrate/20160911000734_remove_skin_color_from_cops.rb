class RemoveSkinColorFromCops < ActiveRecord::Migration
  def change
    remove_column :cops, :skin_color
  end
end
