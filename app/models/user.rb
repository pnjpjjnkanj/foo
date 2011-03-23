class User < ActiveRecord::Base
  has_many :marks #, :through => :user_marks
end
