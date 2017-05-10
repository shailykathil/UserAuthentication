class AddImagableIdToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :imagable_id, :integer
  end
end
