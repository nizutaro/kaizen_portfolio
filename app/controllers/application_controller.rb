class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

    def after_sign_in_path_for(resource)
      projects_path(resource) # ログイン後に遷移するpathを設定
    end

    def after_inactive_sign_up_path_for(resource)
      projects_path(resource)                    #ここを修正する
    end
  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:farst_name, :family_name])
    end
end
