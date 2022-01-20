class CounterController < ApplicationController
  def index
    unless Count.find_by(_id: "counterZero").nil?
    @count = Count.find_by(_id: "counterZero") 
    end
  end

  def increase
    
    if Count.find_by(_id: "counterZero").nil?
      @count = Count.create(_id: "counterZero",value: 1)
    else
      @count = Count.find_by(_id: "counterZero") 
      @count.value = @count.value + 1
      puts @count
      @count.save
    end

    redirect_to "/"
  end
  

end
