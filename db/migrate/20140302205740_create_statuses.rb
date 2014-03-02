class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.boolean :open

      t.timestamps
    end
  end
end
