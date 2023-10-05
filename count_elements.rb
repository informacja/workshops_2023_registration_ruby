class Object
    def is_number?
      to_f.to_s == to_s || to_i.to_s == to_s
    end
  end

class CountElements
    
    attr_accessor :data

    def initialize(parameter_list)
        @data = parameter_list
    end

    def perform    
        hash = Hash.new
        s = @data.to_s.tr(',"[]','').strip.split
        u = s.uniq
        u.uniq { |x| 
            if x.is_number?
                y = x.to_i
            else
                y = x.to_s
            end 
            hash.store(y, (s.count x))
        }
        # puts hash
        hash
    end
end
