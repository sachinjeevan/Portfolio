class ApplicationController < ActionController::Base
layout "application"
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
include DeviseWhitelist
include SetSource
include CurrentUserConcern
include DefaultPageContent
before_action :set_copyright

def set_copyright
    @copyright = SachinViewTool::Renderer.copyright 'Sachin Nandha Sabarish', 'All rights reserved'
end
end


module SachinViewTool
    class Renderer
        def self.copyright name,msg
            "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
            end
            end
            end