# frozen_string_literal: true

class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  private

  def set_restaurant
    Restaurant.find(params[:id])
  end
end
