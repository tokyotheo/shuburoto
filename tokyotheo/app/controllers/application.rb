# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '2cb94cda67e44259e0f0b164c67ff996'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password").
  # filter_parameter_logging :password

  before_filter :resume_session

  private
  def resume_session
    return unless session[:user_id]

    begin
      @current_user = User.find(session[:user_id])
    rescue ActiveRecord::RecordNotFound
      session[:user_id] = nil
    end
  end
end
