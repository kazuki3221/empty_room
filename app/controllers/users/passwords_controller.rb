class Users::PasswordsController < Devise::PasswordsController
  before_action :check_guest,only: %i[create]


end
