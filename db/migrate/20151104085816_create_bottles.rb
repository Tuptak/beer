class CreateBottles < ActiveRecord::Migration
  def change
    create_table :bottles do |t|
      t.string :title
      t.decimal :vote
      t.string :box


      t.timestamps null: false
    end
  end
end
