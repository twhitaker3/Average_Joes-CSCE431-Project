module CalendarHelper
  def month_link(month_date)
    link_to(I18n.localize(month_date, :format => "%B"), {:month => month_date.month, :year => month_date.year})
  end
  
  # custom options for this calendar
  def event_calendar_opts
    { 
      :year => @year,
      :month => @month,
      :event_strips => @event_strips,
      :month_name_text => I18n.localize(@shown_month, :format => "%B %Y"),
      :previous_month_text => "<< " + month_link(@shown_month.prev_month),
      :next_month_text => month_link(@shown_month.next_month) + " >>"    }
  end

  def event_calendar
    # args is an argument hash containing :event, :day, and :options
    space = " "
    comma = ", "
    calendar event_calendar_opts do |args|
      event = args[:event]
      str = event.first_name + space + event.last_name + comma + event.organization + comma + event.status
      %(<a href="/performance_requests/#{event.id}" title="#{h(str)}">#{h(str)}</a>)
    end
  end
end
