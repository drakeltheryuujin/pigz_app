class RemoveGenderFromCops < ActiveRecord::Migration
  def change
    remove_column :cops, :gender
  end
end
