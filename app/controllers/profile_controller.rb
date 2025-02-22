class ProfileController < ApplicationController
  def show
    @user = User.friendly.find(params[:id])
  end
end