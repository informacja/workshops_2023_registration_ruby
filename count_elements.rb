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
            hash.store(x, (s.count x))
        }
        # puts hash
        hash
    end
end
