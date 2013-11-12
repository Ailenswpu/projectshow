# encoding : utf-8
class Project < ActiveRecord::Base
  
  
  rails_admin do
  	field :name
  	field :description, text
    field :declaration, :ck_editor
    field :assignment_book, :ck_editor
    field :phase_check, :ck_editor
    field :experience, :ck_editor
    field :achievement, :ck_editor
  end
end
