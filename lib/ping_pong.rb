class Fixnum
  define_method(:ping_pong) do
    new_array=[]
    count = 1
    self.times() do
      if count.%(3)==0 && count.%(5)==0
        new_array.push("ping-pong")
        count = count.+(1)      
      elsif count.%(3)==0
        new_array.push("ping")
        count = count.+(1)
      elsif count.%(5)==0
        new_array.push("pong")
        count = count.+(1)
      else
        new_array.push(count)
        count = count.+(1)
      end
    end
    new_array
  end
end
