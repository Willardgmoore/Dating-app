require 'rails_helper'


RSpec.describe User, type: :model do
	let(:user) { FactoryGirl.create(:user) }
	before(:each) do # Dave's magic Voodoo
	  sign_in user
	end
	# current_user
	

	describe "User Attributes" do
		it { should respond_to :first_name }
		it { should respond_to :last_name }
		it { should respond_to :age }
		it { should respond_to :gender }
		it { should respond_to :city }
		it { should respond_to :state }
		it { should respond_to :vehicle_type }
		it { should respond_to :description }
	end

	describe "users" do

		it "create and save user" do
			# Build users factory, Then this should run. 

			expect(users.count).to eq(0)
			User1 = User.create(first_name: 'Billy Bob',last_name: 'Thorton')
			User2 = User.create(first_name: 'Beavus',last_name: 'Butthead')
			User3 = User.create(first_name: 'Butthead',last_name: 'Beavus')
			expect(users.count).to eq(3)
		end

		it "should not duplicate create users" do
			expect(users.count).to eq(0)
			User1 = User.create
			User2 = User.create
			expect(users.count).to eq(1)
		end

	  
	end
end
