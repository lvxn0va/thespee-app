class FixSchoolCatColumnName < ActiveRecord::Migration
  def up
  	add_column :schools, :category_name, :string
  end

  def down
  	remove_column :schools, :category_name
  end
end
