class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent
  # TODO:Can't verify CSRF token authenticity.　この変更をする
  protect_from_forgery with: :null_session
end
