class AddDescriptionToWine < ActiveRecord::Migration[5.1]
  def change
    add_column :wines, :description, :text
  end
end
