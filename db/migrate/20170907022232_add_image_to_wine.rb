class AddImageToWine < ActiveRecord::Migration[5.1]
  def change
    add_column :wines, :image, :string
  end
end
