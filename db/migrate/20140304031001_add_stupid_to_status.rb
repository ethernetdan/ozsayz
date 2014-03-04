class AddStupidToStatus < ActiveRecord::Migration
  def change
    add_column :statuses, :stupid, :string
  end
end
