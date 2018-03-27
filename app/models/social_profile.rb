class SocialProfile < ApplicationRecord

  #################
  # Association   #
  #################

  belongs_to :admin_user
end
