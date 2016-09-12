class AddPersonaColumnToCop < ActiveRecord::Migration
  def change
    add_column :cops, :persona, :integer
  end
end
