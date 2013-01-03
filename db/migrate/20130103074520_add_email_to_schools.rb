class AddEmailToSchools < ActiveRecord::Migration
  def change
  	add_column :schools, :email_address, :string
  end
end
