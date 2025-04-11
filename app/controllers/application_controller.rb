class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  helper_method :current_visitor

  def current_visitor
    @current_visitor ||= begin
      # Use session-stored visitor_id if available, otherwise find or create based on IP
      visitor = Visitor.find_by(id: session[:visitor_id]) || Visitor.find_or_create_by(ip_address: request.remote_ip)
      session[:visitor_id] = visitor.id  # Persist visitor_id in the session
      visitor
    end
  end
end
