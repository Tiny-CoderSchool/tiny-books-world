class UsersController < ApplicationController
  def index
    @user = User.find_by_id(current_user.id)
    @books = @user.books

    @address = Address.find_by(user_id: @user.id).nearbys(10,:unit => :km)
    @hash = Gmaps4rails.build_markers(@address) do |a, marker|
      marker.lat a.latitude
      marker.lng a.longitude
      marker.title a.user.email
      marker.json user:{user_id: a.user_id, email: a.user.email }
    end
  end

  def request_book
    #TO DO
  end

  def confirm_lending
    #TO DO
  end

end
