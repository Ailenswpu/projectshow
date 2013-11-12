class AddSubcontentToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :declaration, :text
    add_column :projects, :assignment_book, :text
    add_column :projects, :phase_check, :text
    add_column :projects, :experience, :text
    add_column :projects, :achievement, :text
  end
end
