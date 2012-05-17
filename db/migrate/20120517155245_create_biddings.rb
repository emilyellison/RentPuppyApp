class CreateBiddings < ActiveRecord::Migration
  def change
    create_table :biddings do |t|
      t.string :firstname
      t.string :lastname
      t.integer :quality
      t.integer :value
      t.integer :walk_id

      t.timestamps
    end
  end
end
