class AddTargetpriceToWatchList < ActiveRecord::Migration[6.0]
  def change
    add_column :watch_lists, :target_price, :float 
  end
end
