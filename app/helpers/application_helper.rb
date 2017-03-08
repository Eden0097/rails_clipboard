module ApplicationHelper
  def fix_url(str)
    str.starts_with?('http://') ? str : "http://"
  end

  def display_datetime(dt)
    dt.strftime("%m/%d/%Y %l:%M%P %Z") #03/014/20113 9:09pm
  end
end
