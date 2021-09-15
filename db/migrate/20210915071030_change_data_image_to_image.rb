class ChangeDataImageToImage < ActiveRecord::Migration[6.1]
  def change
    change_column :photos, :image, :string, null: false
  end
end
