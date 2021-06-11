class DealsController < ApplicationController
  def index
    @deals = Deal.includes(:book)
  end
end
