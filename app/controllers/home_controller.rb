class HomeController < ApplicationController
  def index
    if params[:id] == ""
      @nothing = "No symbol entered"
    else
      if params[:id]
        #Code block for handling error in Ruby!
        begin
          @stock = StockQuote::Stock.quote(params[:id])
        rescue StandardError
          @error = "That stock symbol doesn't exist"
        end
      end
    end
  end
  
  def about
  end
end
