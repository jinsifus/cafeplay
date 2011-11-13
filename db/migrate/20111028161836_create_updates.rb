class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.integer :shop_id
      t.string :comment

      t.timestamps
    end
  end
end
