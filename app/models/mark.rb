class Mark < ActiveRecord::Base
  #has_many :user_marks, :dependent => :destroy
  belongs_to :user #, :through => :user_marks
end
