# encoding : utf-8
class Project < ActiveRecord::Base
  validates :description, :length => { :maximum => 120 }
  
  mount_uploader :video, FileUploader
  
  rails_admin do
  	field :name
  	field :description, :text
    field :declaration, :ck_editor
    field :assignment_book, :ck_editor
    field :phase_check, :ck_editor
    field :experience, :ck_editor
    field :achievement, :ck_editor
    field :video, :carrierwave
  end
end
