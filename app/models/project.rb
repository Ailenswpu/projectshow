# encoding : utf-8
class Project < ActiveRecord::Base
  validates :description, :length => { :maximum => 200 }
  validates :user_id, presence: true
    
  belongs_to :user
  mount_uploader :video, FileUploader
  mount_uploader :file, FileUploader
    
  rails_admin do        
    field :name
    field :description, :text
    field :declaration, :ck_editor
    field :assignment_book, :ck_editor
    field :phase_check, :ck_editor
    field :experience, :ck_editor
    field :achievement, :ck_editor
    field :video, :carrierwave
    field :attachment, :ck_editor do
      label '项目附件'
    end
    field :user_id, :enum do
      label '项目团队email'
      enum do
        User.all.map{ |user| [user.email,user.id]}
      end
    end
  end
end
