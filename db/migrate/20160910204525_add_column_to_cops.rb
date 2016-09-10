class AddColumnToCops < ActiveRecord::Migration
  def change
    add_column :cops, :racism_index, :integer
  end
end
