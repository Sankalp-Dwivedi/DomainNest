class HomeController < ApplicationController
  def index
    if @current_tenant
      @message = "Hello, this is from #{@current_tenant.name}"
      render :tenant_landing
    else
      @message = "Hello, this is the base page"
      render :index
    end
  end

  def tenant_landing
    if @current_tenant
      @message = "Hello, this is from #{@current_tenant.name}"
    else
      redirect_to root_url(subdomain: nil), alert: "Tenant not found"
    end
  end

end
