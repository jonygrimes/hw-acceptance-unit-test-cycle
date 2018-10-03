Given(/^the following movies exist:$/) do |table|
  table.hashes.each do |movie|; Movie.create!(movie) end
end

Then(/^the director of "([^"]*)" should be "([^"]*)"$/) do |arg1, arg2|
  expect(Movie.find_by_title(arg1).director).to eq arg2
end

Then(/^the first movie with respect to "([^"]*)" should be "([^"]*)"$/) do |arg1, arg2|
  expect(Movie.order((arg1.eql? 'title' or arg1.eql? 'description')? :title : (arg1.eql? 'rating')? :rating : (arg1.eql? 'date')? :release_date : :director).first.title).to eq arg2
end