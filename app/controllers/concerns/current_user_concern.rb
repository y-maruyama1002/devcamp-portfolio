module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  def guest_user
    guest = GuestUser.new
    guest.name = "guest user"
    guest.first_name = "guest"
    guest.last_name = "user"
    guest.email = "guest@example.com"
    guest
  end
end
