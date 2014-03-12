class RemoveStupidFromStatus < ActiveRecord::Migration
  def change
    remove_column :statuses, :stupid, :string
  end
end
