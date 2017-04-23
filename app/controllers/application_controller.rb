class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DefaultPageContent
  include ConfigurePermittedParameters
  include SetSource
  before_action :set_copyright

  def current_user
  	super || OpenStruct.new(name: "Guest User", first_name:
                                "Guest", last_name: "User")
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
