class AddLoginNameToStudents < ActiveRecord::Migration
  def change
    add_column :students, :login_name, :string
  end
end
