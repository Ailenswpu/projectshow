# encoding : utf-8
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
  
  has_one :project
  
  class << self
     def current_user=(user)
       Thread.current[:current_user] = user
     end

     def current_user
       Thread.current[:current_user]
     end
   end
   
   def admin?
     self.email.to_s  == Setting.getYaml["admin_email"].to_s
   end
   
  rails_admin do
    #visible false
    label_plural '管理员管理'
    visible do
      bindings[:controller].current_user.email.to_s == Setting.getYaml["admin_email"].to_s
    end
  end
end
