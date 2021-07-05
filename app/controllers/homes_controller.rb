class HomesController < ApplicationController
  def index
    noticium_last
  end

  private
  def noticium_last
    @noticium = Noticium.last
  end
end
