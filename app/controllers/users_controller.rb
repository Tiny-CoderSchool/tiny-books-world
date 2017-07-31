class UsersController < ApplicationController
  def index

    @book = Book.find_by_id(params[:id])

    @book.selves



    @users = User.where(id: user_ids)







    @address = Address.find_by(user_id: @users.id).nearbys(100,:unit => :km)

    @hash = Gmaps4rails.build_markers(@address) do |a, marker|
      marker.lat a.latitude
      marker.lng a.longitude
      marker.title a.user.email
      marker.json user:{user_id: a.user_id, email: a.user.email, phone: a.phone}
    end
  end

  def request_book
    #TO DO
  end

  def confirm_lending
    #TO DO
  end

end
