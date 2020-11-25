module ApplicationHelper

    def text_with_badge(text, badge_value=nil)
        badge = content_tag :span, badge_value, class: 'badge'
        text = raw "#{text} #{badge}" if badge_value
        return text
    end

end
