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

  def random

  	 @user_number1 = params["number1"]
  	 @user_number2 = params["number2"]
  	 @num1 = @user_number1.to_i
  	 @num2 = @user_number2.to_i
  	 @random = rand(@num1..@num2)
    render("random.html.erb")
  end





end
