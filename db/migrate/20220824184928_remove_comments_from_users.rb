class RemoveCommentsFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :comment
  end
end
