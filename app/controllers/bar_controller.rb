class BarController < ApplicationController
  #layout nil
  layout 'application'

  def index
  end

  def another
    user = User.new
    user.name = params['name']
    user.title = 'Manager'
    user.save!

    #@users = User.find :all, :conditions => {:name => 'Bob'}
    @users = User.find :all, :order => 'updated_at ASC'

    mark = Mark.new
    user.marks.create!(:test_num_val => rand(256))
  end

  def new
    @user = User.new
  end

  def create
    puts '*********************************************'
    puts "Session: #{ session }"
    puts '*********************************************'

    if params['user']
      user = User.new
      user.name = params['user']['name']
      user.title = params['user']['title']
      user.save!
    end
    
    @users = User.find :all, :order => 'created_at ASC'

    render :layout => 'bar'
  end

  def get_info
    @first_user = User.find :first
  end

  def info
    p 'Yo'
  end

  def info_2
    @first_user = User.find :first
  end

  def ajax    
  end
end
