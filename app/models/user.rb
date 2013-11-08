# encoding : utf-8
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
         
         
  
  #rails_admin的配置
  # rails_admin do
#     label_plural '用户管理'
#     visible do
#       bindings[:controller].current_admin.email.to_s == Setting.getYaml["admin_email"].to_s
#     end
#   end
end
