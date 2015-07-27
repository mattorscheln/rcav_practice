class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square

  	 @user_number = params["number"]
  	 @number = @user_number.to_f
  	 @square = @number * @number 
    render("square.html.erb")
  end

  def square_root

  	 @user_number = params["number"]
  	 @number = @user_number.to_f
  	 @sqr_rt = @number **0.5
    render("square_root.html.erb")
  end





end
