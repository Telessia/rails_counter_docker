class CounterController < ApplicationController
  def index
    @count = Count.find_by(_id: "counterZero") 
  end

  def increase
    
    if Count.where(_id: "counterZero").nil?
      @count = Count.create(_id: "counterZero",value: 0)
    else
      @count = Count.find_by(_id: "counterZero") 
      @count.value = @count.value + 1
      puts @count
      @count.save
    end

    redirect_to "/"
  end
  

end
