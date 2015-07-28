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

  def payment

  	 @user_rate = params["rate"]
  	 @user_term = params["term"]
  	 @user_balance = params["balance"]
  	 @rate = @user_rate.to_f
  	 @term = @user_term.to_i
  	 @balance = @user_balance.to_i

  	 @payment = ((@rate / 10000 / 12) * @balance) / (1 - ((1 + (@rate / 10000 / 12)) ** (-@term * 12)))
  	 @pmt = @payment.round(2)

    render("payment.html.erb")
  end




end
