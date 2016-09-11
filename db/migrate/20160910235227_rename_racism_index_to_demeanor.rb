class RenameRacismIndexToDemeanor < ActiveRecord::Migration
  def change
    rename_column :cops, :racism_index, :demeanor
  end
end
