class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities

    user ||= User.new # guest user (not logged in)
    if user.role == 'admin'
      can :manage, :all
    elsif user.role == 'loggedin'
      can :read, [Episode, Season, Show]
      can :read, User, :user_id => user.id
      # cannot :read, [:users, :user_sessions]
      can :destroy, [:users, :user_sessions], :active => true, :user_id => user.id
      can :manage, :subscribes, :active => true, :user_id => user.id
    else
      can :read, :all #[:episodes, :seasons, :shows]
      can [:create, :read, :new], [:users, :user_sessions]
    end
    
    # if 
    # end
  end
end


## old declarative-authorization rules
# authorization do
#   role :admin do
#     has_permission_on [:episodes, :seasons, :shows, :users, :roles, :subscribes, :user_sessions], :to => [:index, :show, :new, :create, :edit, :update, :destroy]
#     has_permission_on :authorization_rules, :to => :read
#   end
  
#   role :guest do
#     has_permission_on [:episodes, :seasons, :shows], :to => [:index, :show]
#     has_permission_on :users, :to => [:new, :create]
#   end
  
#   role :logged_in_user do
#     # includes :guest
#     has_permission_on [:episodes, :seasons, :shows], :to => [:index, :show]
#     has_permission_on [:users, :user_sessions], :to => [:edit, :update, :destroy] do 
#       if_attribute :user => is { user }
#     end
#     has_permission_on :subscribes, :to => [:new, :create, :edit, :update, :destroy] do 
#       if_attribute :user => is { user }
#     end
#   end
# end