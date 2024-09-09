class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  # before_action :set_current_tenant
  before_action :set_tenant

  # def set_current_tenant
  #   @current_tenant = Tenant.find_by(subdomain: request.subdomain)
  #   ActsAsTenant.current_tenant = @current_tenant

  #   if @current_tenant.nil?
  #     redirect_to root_url(subdomain: nil), alert: "Tenant not found"
  #   end
  # end

  private

  def set_tenant
    if request.subdomain.present? && request.subdomain != 'www'
      @current_tenant = Tenant.find_by(subdomain: request.subdomain)
    else
      @current_tenant = nil # for base page
    end

    # Set the tenant for acts_as_tenant
    ActsAsTenant.current_tenant = @current_tenant
  end


end
