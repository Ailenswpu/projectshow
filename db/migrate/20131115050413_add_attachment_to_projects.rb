class AddAttachmentToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :attachment, :text
  end
end
