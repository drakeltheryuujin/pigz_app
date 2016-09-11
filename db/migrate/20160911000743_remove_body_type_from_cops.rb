class RemoveBodyTypeFromCops < ActiveRecord::Migration
  def change
    remove_column :cops, :body_type
  end
end
