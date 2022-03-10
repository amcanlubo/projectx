class HomeController < ApplicationController
  before_action :check_if_admin, :check_if_super_admin, :check_if_member

  def check_if_member
    if current_user
      if current_user.member?
          redirect_to member_index_path
      end
    end
  end
 
  def check_if_admin
    if current_user
        if current_user.admin?
            redirect_to admin_index_path
        end
    end
  end

  def check_if_super_admin
    if current_user
      if current_user.superadmin?
          redirect_to rails_admin_path
      end
    end
  end
end
