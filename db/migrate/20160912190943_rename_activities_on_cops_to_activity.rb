class RenameActivitiesOnCopsToActivity < ActiveRecord::Migration
  def change
    rename_column :cops, :activities, :activity
  end
end
