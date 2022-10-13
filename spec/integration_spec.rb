require "todo"
require "todo_list"

RSpec.describe "integration" do 
    context "when a todo item is added to ToDoList" do
        it "adds an instance of todo to list" do 
            todo_list = ToDoList.new
            item = ToDo.new("wash the car")
            results = todo_list.add(item)
            expect(results).to eq [item]
        end
    end

    it "returns the incomplete item" do 
        todo_list = ToDoList.new
        item = ToDo.new("wash the car")
        item.mark_done!
        todo_list.add(item)
        results = todo_list.incomplete
        expect(results).to eq []
    end

    it "returns the incomplete item" do 
        todo_list = ToDoList.new
        item1 = ToDo.new("wash the car")
        item2 = ToDo.new("Do the laundry")
        item1.mark_done!
        todo_list.add(item1)
        todo_list.add(item2)
        results = todo_list.incomplete
        expect(results).to eq [item2]
    end

    it "returns the incomplete item" do 
        todo_list = ToDoList.new
        item1 = ToDo.new("wash the car")
        item2 = ToDo.new("Do the laundry")
        item1.mark_done!
        todo_list.add(item1)
        todo_list.add(item2)
        results = todo_list.complete
        expect(results).to eq [item1]
    end

    it "returns the incomplete item" do 
        todo_list = ToDoList.new
        item1 = ToDo.new("wash the car")
        item2 = ToDo.new("Do the laundry")
        todo_list.add(item1)
        todo_list.add(item2)
        todo_list.complete
        results = todo_list.give_up!
        expect(results).to eq [item1, item2]
    end
end 
