class Creditcard < ActiveRecord::Base
  belongs_to :user
  belongs_to :bank
end
