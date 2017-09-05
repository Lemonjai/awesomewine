class CreateWines < ActiveRecord::Migration[5.1]
  def change
    create_table :wines do |t|
      t.string :name
      t.string :manufacture
      t.string :city
      t.integer :year
      t.string :country

      t.timestamps
    end
  end
end
