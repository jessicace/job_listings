class CalculationsController < ApplicationController
  def perform
    number_1 = params[:number_1].to_i
    number_2 = params[:number_2].to_i
    @result = number_1 + number_2
  end
end
