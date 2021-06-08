class RemovePriceFromWatchList < ActiveRecord::Migration[6.0]
  def change
    remove_column :watch_lists, :price, :float
  end
end
