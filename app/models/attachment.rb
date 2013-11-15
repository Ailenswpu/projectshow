#encoding : utf-8
class Attachment < ActiveRecord::Base
  rails_admin do
    field :title do
      label '附件标题'
    end
    field :content, :ck_editor do
      label '附件内容'
    end
  end
end
