require 'rails_helper'

RSpec.describe User, type: :model do
  before(:all) do
    User.destroy_all
  end

  context 'Unit Tests' do
    it 'Creates Users' do
      user = User.create(username: 'New User', password: 'Unsecured Password')
      expect(User.first).to eql(user)
    end

    it 'Deletes Users' do
      User.create(username: 'Other User', password: 'Unsecured Password')
      User.first.destroy
      expect(User.all.count).to eql(0)
    end

    it "Can't create a User without a :username" do
      User.create(password: 'An Unsecured Solitary Password')
      expect(User.all.count).to eql(0)
    end

    it "Can't create a User without a :password" do
      User.create(username: 'Lonely User')
      expect(User.all.count).to eql(0)
    end

    it "Can't create two Users with the same username" do
      User.create(username: 'User', password: 'One Unsecured Password')
      User.create(username: 'User', password: 'Second Unsecured Password')
      expect(User.all.count).to eql(1)
    end
  end
end
