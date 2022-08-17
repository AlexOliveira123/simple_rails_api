class HeroesController < ApplicationController
  def show_all
    service = ::ApiBase.new
    render json: { 'data': service.get_all_heroes }, status: 200
  end
end
