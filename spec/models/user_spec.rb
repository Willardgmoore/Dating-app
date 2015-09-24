require 'rails_helper'

RSpec.describe User, type: :model do

	describe "User Attributes" do
		it { should respond_to :first_name }
		it { should respond_to :last_name }
		it { should respond_to :age }
		it { should respond_to :gender }
		it { should respond_to :city }
		it { should respond_to :state }
		it { should respond_to :vehicle_type }
		it { should respond_to :description }
		# it { should respond_to :email }
		# it { should respond_to :password }
	end

	describe "users" do

		it "create and save user" do
			expect(users.count).to eq(0)
			User1 = User.create(first_name: 'Billy Bob',last_name: 'Thorton', age: 46, gender: true, city: 'Salt Lake City', state: 'UT', vehicle_type: true, description: 'Something about myself')
			User2 = User.create(first_name: 'Beavus',last_name: 'Butthead', age: 46, gender: true, city: 'Salt Lake City', state: 'UT', vehicle_type: true, description: 'Something about myself')
			User3 = User.create(first_name: 'Butthead',last_name: 'Beavus', age: 46, gender: true, city: 'Salt Lake City', state: 'UT', vehicle_type: true, description: 'Something about myself')
			expect(users.count).to eq(3)
		end

		it "should not duplicate create users" do
			expect(users.count).to eq(0)
			User1 = User.create(first_name: 'Billy Bob',last_name: 'Thorton', age: 46, gender: true, city: 'Salt Lake City', state: 'UT', vehicle_type: true, description: 'Something about myself')
			User2 = User.create(first_name: 'Billy Bob',last_name: 'Thorton', age: 46, gender: true, city: 'Salt Lake City', state: 'UT', vehicle_type: true, description: 'Something about myself')
			expect(users.count).to eq(1)
		end
		
	  
	end
end
