class FixSchoolCategoryColumnName < ActiveRecord::Migration
  class FixSchoolColumnName < ActiveRecord::Migration
  def change
    rename_column :schools, :category, :school_category
  end
end
end
