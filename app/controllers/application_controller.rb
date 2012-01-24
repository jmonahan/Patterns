class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :init_ui_body
  
  def init_ui_body
    @body_id = controller_name.classify
    @body_class = ""
  end
end
