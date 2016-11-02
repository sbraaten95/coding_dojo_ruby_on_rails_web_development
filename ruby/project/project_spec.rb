require_relative 'project'

RSpec.describe Project do
	it 'has a getter and setter for name attribute' do
		project = Project.new('Project Name', "I am a project")
		project.name = "Changed Name"
		project.add_to_team(Project.new('a', 'b'))
		expect(project.teams).not_to eq('[]')
		expect(project.name).to eq("Changed Name")
		expect(project.elevator_pitch).to eq("Changed Name, I am a project")
	end
end