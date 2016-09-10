class AddGenderColumnToCops < ActiveRecord::Migration
  def change
    add_column :cops, :gender, :string
  end
end
