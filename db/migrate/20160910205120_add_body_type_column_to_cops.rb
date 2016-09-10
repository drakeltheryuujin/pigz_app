class AddBodyTypeColumnToCops < ActiveRecord::Migration
  def change
    add_column :cops, :body_type, :string
  end
end
