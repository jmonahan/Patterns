module PatternsHelper
  
  def action_icon(type, options={}) 
    options.reverse_merge!(:enabled => true, :show_text => true)
    type = type.downcase
    
    action_icon_tag = "a"
    action_icon_classes = "action_icon #{type} clear_float"
    if options[:enabled] == false
      action_icon_classes += " disabled"
      action_icon_tag = "div"
    end
    
    out = "<div class=\"action_icon_wrapper clear_float\"><#{action_icon_tag} class=\"#{action_icon_classes}\">"
    out += "<div class=\"icon icon_#{type}\"></div>"
    
    if options[:show_text]
      out += "<div class=\"text\">"
      out += options[:text] || action_icon_text(type)
      out += "</div>"
    end
    
    out += "</#{action_icon_tag}></div>"
    return out.html_safe
  end
  
  private
  def action_icon_text(type)
    text = {"add" => "Add Item", "remove" => "Remove Item", "delete" => "Delete Item", "edit" => "Edit Item"}
    return text.fetch(type)
  end
  
end
