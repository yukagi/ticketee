Given /^that the project has a ticket:$/ do |table|
  table.hashes.each do |attributes|
    @project.tickets.create!(attributes)
  end
end
