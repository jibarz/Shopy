class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.datetime :created_at
      t.text :manufacturer
      t.float :stock

      t.timestamps
    end
  end
end
