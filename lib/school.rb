require 'pry'
class School

    attr_accessor :name

    def initialize (school)
        @school = {}
    end

    def roster
        @school
    end

    def add_student(name, grade)
        if roster.has_key?(grade)
            roster[grade] << name
        else
            roster[grade] = []
            roster[grade] << name
        end
    end

    def grade(grade)
        roster.each do |k, v|
            if k == grade
                return v
            end
        end
    end

    def sort
        sorted = {}
        roster.each do |grade, students|
            sorted[grade] = students.sort
        end
        sorted
    end
end
