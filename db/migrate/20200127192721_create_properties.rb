class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.decimal :price
      t.string :description
      t.string :location
      t.string :property_type
      t.integer :bedrooms
      t.integer :bathrooms
      t.decimal :size
      t.string :owner

      t.timestamps
    end
  end
end
