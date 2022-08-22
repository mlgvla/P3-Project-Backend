class AddUrlToClothing < ActiveRecord::Migration[6.1]
  def change
    add_column :clothings, :url, :string
  end
end
