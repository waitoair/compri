class AddUrlToDeal < ActiveRecord::Migration[6.0]
  def change
    add_column :deals, :url, :string
  end
end
