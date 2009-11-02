class LunchController < ApplicationController
  
  def index
  
  end
  
  def winner
    if params[:contestants]
      @contestants = params[:contestants]
      @winner = Lunch.get_random(@contestants)
    
      Justlogging.log("Winner: #{@winner}. Contestants #{@contestants * ', '}")
    
      respond_to do |format|
        format.html 
        format.xml
        format.json
        format.js
      end
    end
  end
end