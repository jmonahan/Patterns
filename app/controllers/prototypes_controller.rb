class PrototypesController < ApplicationController
  #layout "application_prototype", :except => [:no_layout]

  #before_filter :load_errors

  def load_errors
    flash[:error] = "foo bar"
  end
  
  def render_template
    if params[:folder] == "demo_v2" 
        load_dummy_models
    end
    
    render :template => "prototypes/#{params[:folder]}/#{params[:template]}"
  end
  
  def no_layout
  end

  private
    def load_dummy_models
      @modelA =   {"first" => "John", "last" => "Doe"}
    end

end