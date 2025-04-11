class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  helper_method :current_visitor

  def current_visitor
    ip = request.remote_ip
    visitor = Visitor.find_or_create_by(ip_address: ip)
    Rails.logger.info "Visitor ID: #{visitor.id} for IP: #{ip}" # Log visitor ID and IP address
    @current_visitor ||= visitor
  end
end
