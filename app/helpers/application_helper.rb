module ApplicationHelper
  def coffee(&block)
    javascript_tag do
       CoffeeScript.compile(capture(&block)).html_safe
    end
  end
end
