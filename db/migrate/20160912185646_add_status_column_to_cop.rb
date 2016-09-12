class AddStatusColumnToCop < ActiveRecord::Migration
  def change
    add_column :cops, :status, :integer
  end
end
