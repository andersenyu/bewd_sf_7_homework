class SecretNumber
# this class will generate our secret number for us
  attr_accessor :num_arr
  
  def initialize(num_arr)
    @num_arr = [1,2,4,5,6,7,8,9,10]
  end

  def rand
    @num_arr.sample
  end

end
