class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_name
      t.string :project_description_name
      t.string :start_date
      t.string :end_date
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
