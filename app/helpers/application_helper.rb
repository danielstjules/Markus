# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  # A more robust flash method. Easier to add multiple messages of each type:
  # :error, :success, :warning and :notice
  def flash_message(type, text)
    available_types = [:error, :success, :warning, :notice]
    # If type isn't one of the four above, we display it as :notice.
    # We don't want to surpress the message, which is why we pick a 
    # type, and :notice is the most neutral of the four
    type = :notice if !available_types.include?(type)
    # If a flash with that type doesn't exist, create a new hash
    flash[type] = [] if !flash.has_key?(type)
    # Add the message text
    flash[type].push(text)
  end

end