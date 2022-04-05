class CreateMaps < ActiveRecord::Migration[6.1]
  def change
    create_table :maps do |t|
      t.text :slug
      t.text :name
      t.integer :difficulty

      t.timestamps
    end
  end
end
