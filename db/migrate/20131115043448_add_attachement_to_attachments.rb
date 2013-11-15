class AddAttachementToAttachments < ActiveRecord::Migration
  def change
    add_column :attachments, :title, :string
    add_column :attachments, :content, :text
  end
end
