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
    @number = params.fetch("number").to_f
    @square = @number.to_f ** 2 
    render({ :template => "calc_templates/square_results"})
  end

  #---Square Root Calculator--#
  def square_root
    render({ :template => "calc_templates/square_root"})
  end

  def square_root_results
    @number = params.fetch("number").to_f
    @square_root = @number.to_f ** 0.5
    render({ :template => "calc_templates/square_root_results"}) 
  end

  #---Payment Calculator--#
  def payment
    render({ :template => "calc_templates/payment"})
  end

  def payment_results
    @apr = params.fetch("apr_input", 0).to_f
    @years = params.fetch("years_input", 0).to_f
    @principal = params.fetch("pv_input", 0).to_f

    #---math computation--#
    #---r, monthly rate--#
    @r_number = @apr / 1200
    #---n, converts to number of months--#
    @n_number = @years * 12
    #---calculation---#
    @payment = (@r_number * @principal) / (1 - ((1 + @r_number) ** (-@n_number)))
  

    render({ :template => "calc_templates/payment_results"})
  end

  #---Random Number Generator--#
  def random
    render({ :template => "calc_templates/random"})
  end

  def random_results
    @min_input = params.fetch("min_number").to_f
    @max_input = params.fetch("max_number").to_f

    render({ :template => "calc_templates/random_results"})

  end

end
