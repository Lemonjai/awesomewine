class AddSummaryToWine < ActiveRecord::Migration[5.1]
  def change
    add_column :wines, :summary, :text
  end
end
