class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  helper_method :current_visitor

  def current_visitor
    @current_visitor ||= Visitor.find_or_create_by(ip_address: request.remote_ip)
  end
end
