class AddActiveToStudents < ActiveRecord::Migration
  def change
    remove_column :students, :active
    add_column :students, :active, :boolean, :default => false
  end
  #t.boolean :active, :default => false
end
