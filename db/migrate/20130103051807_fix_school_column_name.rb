class FixSchoolColumnName < ActiveRecord::Migration
  def change
    rename_column :schools, :address, :street
  end
end
