class ToDo 
    def initialize(task)
        @task = task
        @hash = {@task => "incomplete"}
    end

    def task
        return @task
    end 

    def mark_done!
        @hash[@task] = "complete"
    end

    def done?
        if @hash[@task] == "complete"
            return true
        else
            return false
        end
    end

end