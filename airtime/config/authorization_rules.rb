authorization do
  role :admin do
    has_permission_on [:episodes, :seasons, :shows, :users, :roles, :subscribes, :user_sessions], :to => [:index, :show, :new, :create, :edit, :update, :destroy]
    has_permission_on :authorization_rules, :to => :read
  end
  
  role :guest do
    has_permission_on [:episodes, :seasons, :shows], :to => [:index, :show]
    has_permission_on :users, :to => [:new, :create]
  end
  
  role :logged_in_user do
    # includes :guest
    has_permission_on [:episodes, :seasons, :shows], :to => [:index, :show]
    has_permission_on [:users, :user_sessions], :to => [:edit, :update, :destroy] do 
      if_attribute :user => is { user }
    end
    has_permission_on :subscribes, :to => [:new, :create, :edit, :update, :destroy] do 
      if_attribute :user => is { user }
    end
  end
end