# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
(1..30).to_a.each do |i|
	tl = TaskList.create({title: "Tasklist #{i}", description: "description for Tasklist #{i}"})
	(1..20).to_a.each do |j|
		Task.create(title: "Task #{i} : #{j}", description: "description for Task #{i} #{j}",task_list_id: tl.id)
	end
end
