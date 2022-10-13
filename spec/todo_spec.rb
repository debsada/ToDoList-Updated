require "todo"

RSpec.describe ToDo do 
    it "returns task as string" do
        task = ToDo.new("wash the car")
        results = task.task
        expect(results).to eq "wash the car"
    end

    it "returns task as string" do
        task = ToDo.new("wash the car")
        results = task.mark_done!
        expect(results).to eq "complete"
    end

    it "returns true when complete task given" do
        task = ToDo.new("wash the car")
        task.mark_done!
        results = task.done?
        expect(results).to eq true
    end
end
