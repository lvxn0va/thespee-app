class AddSlugToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :slug, :string
    add_index :schools, :slug
  end
end
