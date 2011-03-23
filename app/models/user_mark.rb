class UserMark < ActiveRecord::Base
  belongs_to :user
  belongs_to :mark
end
