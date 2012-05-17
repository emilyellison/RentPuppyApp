class CreateWalks < ActiveRecord::Migration
  def change
    create_table :walks do |t|
      t.date :walk_date
      t.integer :puppy_id

      t.timestamps
    end
  end
end
