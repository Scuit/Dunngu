class Ability
    include CanCan::Ability

    def initialize(user)

        if user.is? :admin
            can :manage, :all
        else
            can :read, :all
        end

        if user.is? :moderator
            can :destroy, News
        end

        if user.is? :general
            can :read, News
        end
    end
end
