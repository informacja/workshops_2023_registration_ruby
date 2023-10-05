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
        has_big_letter
        return !@errors
    end

    def has_big_letter
        /[[:upper:]]/.match(@data) unless @errors = true
    end
end
