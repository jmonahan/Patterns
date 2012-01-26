class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :init_ui_body
  
  helper :patterns
  
  def init_ui_body
    @body_id = controller_name.classify.pluralize.downcase + "_" + params[:action]
    @body_class = ""
  end
end
