class ValidatePassword

    attr_accessor :data
    # validate :check_valid_password

    def initialize(parameter_list)
        @data = parameter_list
        @errors = false
    end

    def perform   

        # hash = Hash.new
        # s = @data.to_s.tr(',"[]','').strip.split
        # u = s.uniq
        # u.uniq { |x| 
        #     hash.store(x, (s.count x))
        # }
       
        
        check_valid_password
    end
     
    def check_valid_password
        # correct_length
        has_big_letter        
        has_small_letter
        return not(@errors)
    end

    def correct_length
        l = @data.length
        if l < 6 
            @errors = true  
        end
        if l > 26  
            @errors = true 
        end
    end

    def has_big_letter
        unless /[[:upper:]]/.match(@data) 
             @errors = true
        end
    end

    def has_small_letter
        unless /[[:lower:]]/.match(@data) 
             @errors = true
        end
    end

    

end
