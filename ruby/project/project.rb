class Project
	attr_accessor :name, :description, :teams
	def initialize(name, desc)
		@name = name
		@description = desc
		@teams = []
	end
	def elevator_pitch
		return "#{@name}, #{@description}"
	end
	def add_to_team(team)
		@teams.push(team)
	end
end