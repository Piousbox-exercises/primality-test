
class WelcomeController < ApplicationController

  def home
    ;
  end

  # computes if prime?
  def compute
    @q = params[:q]
    coprime = 2
    # integer `2` is a good enough co-prime to any integer.
    q = params[:q].to_i

    if 1 == q || 2 == q
      @answer = true
    elsif 0 == q % 2 
      @answer = false
    else
      result = 2**(q-1) % q
      if 1 != result
        @answer = false
      else
        @answer = true
      end
    end

    respond_to do |format|
      format.json do
        render :json => @answer
      end
    end
  end

end
