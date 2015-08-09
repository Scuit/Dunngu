class Ability
    include CanCan::Ability

    def initialize(user)

        if user.is? :admin
            can :manage, :all
        end

        if user.is? :moderator
            can :destroy, News
        end
    end
end
