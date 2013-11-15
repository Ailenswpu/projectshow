class Ability
  include CanCan::Ability

  def initialize(user)
    if user && user.admin?
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :dashboard 
      can :manage, :all 
    elsif user
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :dashboard 
      can :manage, Project ,user_id: user.id
      cannot [:destroy], Project ,user_id: user.id
    end
  end
end
