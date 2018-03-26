class Attachment < ApplicationRecord
  #################
  # Association   #
  #################
  belongs_to :article
end
