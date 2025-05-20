class Task
    attr_accessor :id, :name, :description, :status
    
    def initialize(id, name, description, status)
        @id = id
        @name = name
        @description = description
        @status = status
    end

    def complete 
        @status = 'completed'
    end
    
    def to_s
        "Task ID: #{@id}, Name: #{@name}, Description: #{@description}, Status: #{@status}"
    end
end