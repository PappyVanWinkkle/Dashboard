class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DefaultPageContent
  include ConfigurePermittedParameters
  include SetSource
  before_action :set_copyright

  def current_user
  	super || guest_user
  end

  def guest_user
    guest = GuestUser.new
    guest.name = "Guest User"
    guest.first_name = "Guest"
    guest.last_name = "User"
    guest.email = "guest@example.com"
    guest
  end
end

def set_copyright
  @copyright = CopyViewTool::Rendering.copyright 'Mark Williams', 'All rights Reserved'
end

module CopyViewTool
  class Rendering
    def self.copyright name, msg
      "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
    end
  end
end
