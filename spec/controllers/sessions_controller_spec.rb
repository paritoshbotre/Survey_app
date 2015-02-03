require 'rails_helper'

RSpec.describe SessionsController, :type => :controller do

	describe "new page" do
		expect((response.status).to eq(200))
	end
end
