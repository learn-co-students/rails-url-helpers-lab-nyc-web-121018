class AddActiveToStudents < ActiveRecord::Migration
  def change
    add_column :students, :active, :boolean, default: FALSE
  end
end
