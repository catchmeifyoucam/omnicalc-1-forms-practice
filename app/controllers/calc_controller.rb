class CalcController < ApplicationController 
  
  #---home--#
  def render_homepage
  render({ :template => "calc_templates/homepage"})
  end 

  #---Square Calculator--#
  def square
   render({ :template => "calc_templates/square"})
  end

  def square_results
    @number_to_square = params.fetch("number_to_square").to_f
    @square = @number_to_square.to_f ** 2 
    render({ :template => "calc_templates/square_results"})
  end

  #---Square Root Calculator--#
  def square_root
    render({ :template => "calc_templates/square_root"})
  end

  #---Payment Calculator--#
  def payment
    render({ :template => "calc_templates/payment"})
  end

  #---Random Number Generator--#
  def random
    render({ :template => "calc_templates/random"})
  end
end
