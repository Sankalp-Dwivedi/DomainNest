# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  before_action :set_tenant

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  def create
    if @current_tenant
      super
    else
      redirect_to root_path, alert: "No tenant found for the subdomain."
    end
  end

  private

  def set_tenant
    @current_tenant = Tenant.find_by(subdomain: request.subdomain)
    if @current_tenant
      ActsAsTenant.current_tenant = @current_tenant
    else
      ActsAsTenant.current_tenant = nil
    end
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
