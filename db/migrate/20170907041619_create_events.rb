class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.text :summary
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
