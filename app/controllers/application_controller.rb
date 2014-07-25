class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter do
    resource = controller_name.singularize.to_sym
    method = "#{resource}_params"
    params[resource] &&= send(method) if respond_to?(method, true)
  end

  def authenticate_active_admin_user!

    unless current_user
      puts '==========================================='
      flash[:alert] = "У Вас нема прав доступу до адміністративної частини"
      redirect_to root_path
    end
  end
end
