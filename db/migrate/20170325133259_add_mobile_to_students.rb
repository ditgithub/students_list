class AddMobileToStudents < ActiveRecord::Migration
  def change
    add_column :students, :mobile, :integer
  end
end
