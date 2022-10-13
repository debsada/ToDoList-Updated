class ToDoList 
    def initialize 
        @list = []
    end 

    def add(todo)
        @list << todo
    end

    def incomplete
            return @list.select {|task| task.done? == false}
    end

    def complete
        return @list.select {|task| task.done? == true}
    end 

    def give_up!
        @list.each {|task| task.mark_done!}
    end 
end 

