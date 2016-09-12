class AddActivitiesColumnToCop < ActiveRecord::Migration
  def change
    add_column :cops, :activities, :integer
  end
end
