require "rails_helper"

RSpec.describe MoviesController, :type => :controller do
  
  describe "HW3 Tests 1" do
    describe 'HW3 Test 2' do 
      @movie = Movie.new(:title => "Star Wars", :rating => 'PG', :director => 'George Lucas', :release_date => '1977-05-25')
      @movie.save
      it 'edit movie' do 
        get 'edit', { :id => '4' };expect(response).to render_template(:edit)
      end 
    end

  end 
end