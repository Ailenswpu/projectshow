#encoding : utf-8
class Attachment < ActiveRecord::Base
  mount_uploader :file, FileUploader
  
  rails_admin do
    field :file, :carrierwave
  end
end
