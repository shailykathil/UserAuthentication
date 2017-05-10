class AddImagableTypeToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :imagable_type, :string
  end
end
