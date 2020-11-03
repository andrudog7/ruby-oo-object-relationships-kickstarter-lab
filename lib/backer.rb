class Backer
attr_reader :name

@@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        projectbackers = ProjectBacker.all.select{|p| p.backer == self}
        projectbackers.map do |p|
            p.project
        end
    end

end