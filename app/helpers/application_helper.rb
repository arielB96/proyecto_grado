module ApplicationHelper

  def bootstrap_class_for flash_type
    { success: "alert-success", error: "alert-danger", alert: "alert-warning", notice: "alert-info" }[flash_type] || flash_type.to_s
  end

  def flash_messages(opts = {})
    flash.each do |msg_type, message|
      concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type)} fade in") do 
              concat content_tag(:button, 'x', class: "close", data: { dismiss: 'alert' })
              concat message 
            end)
    end
    nil
  end
  
  module Medicamnetos
  def nav_link(page, &link_text) 
    class_name = request.env['PATH_INFO'].match(page) ? 'active' : nil

    content_tag(:li, class: class_name) do
      link_to page do
        link_text.call
      end
    end
  end

  def treeview_link(text, &links)
    content = link_to('#') do
      content_tag(:span, text) <<
      content_tag(:i, '', class: "fa pull-right fa-angle-left")
    end

    content << content_tag(:ul, class: 'treeview-menu') do 
      links.call
    end

    content_tag :li, class: 'treeview' do
      content
    end
  end
end
end