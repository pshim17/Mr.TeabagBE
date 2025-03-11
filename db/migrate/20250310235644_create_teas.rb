class CreateTeas < ActiveRecord::Migration[7.1]
  def change
    create_table :teas do |t|
      t.string :title
      t.string :description
      t.float :temperature
      t.integer :brew_time
      t.float :price

      t.timestamps
    end
  end
end
