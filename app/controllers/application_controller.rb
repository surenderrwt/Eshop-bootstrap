class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    include CurrentCart
    before_action :set_cart

    helper_method :is_admin?

    def is_admin?
        signed_in? ? current_user.admin : false
    end
end
