class CreateSchools < ActiveRecord::Migration
  def self.up
    create_table :schools do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :short_description
      t.text :long_description
      t.integer :category_id
      t.string :instructors
      t.boolean :verified
      t.string :price

      t.timestamps
    end
  end
  
  def self.down
    drop_table :schools
  end
end
