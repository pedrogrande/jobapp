class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    if resource.user_type == 'company'
      new_company_profile_path
    else
      root_path
    end
  end
end
