class AddSkinColorColumnToCops < ActiveRecord::Migration
  def change
    add_column :cops, :skin_color, :string
  end
end
