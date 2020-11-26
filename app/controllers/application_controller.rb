class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    include CurrentCart
    before_action :set_cart

    helper_method :is_admin?, :admin_only 

    def is_admin?
        current_admin_user ? current_admin_user : false
    end


    def admin_only
        unless current_admin_user
          redirect_to root_path, :notice => "Not authorized to access all orders"
        end
    end
end
