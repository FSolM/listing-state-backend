require 'rails_helper'

RSpec.describe Property, type: :model do
  before(:all) do
    User.destroy_all
    User.create(username: 'User', password: 'One Unsecured Password')
    Property.destroy_all
  end

  context 'Unit Tests' do
    it 'Creates Properties' do
      user = User.first.username
      property = Property.create(name: 'Test Property', price: 3000, description: "Property's description", location: 'San Francisco', property_type: 'Appartment', bedrooms: 2, bathrooms: 1, size: 250, owner: user)
      expect(Property.first).to eql(property)
    end

    it 'Deletes Properties' do
      user = User.first.username
      Property.create(name: 'Test Property', price: 3000, description: "Property's description", location: 'San Francisco', property_type: 'Appartment', bedrooms: 2, bathrooms: 1, size: 250, owner: user)
      Property.first.destroy
      expect(Property.all.count).to eql(0)
    end

    it 'Can create a Property without a :description' do
      user = User.first.username
      property = Property.create(name: 'Test Property without Description', price: 3000, location: 'San Francisco', property_type: 'Appartment', bedrooms: 2, bathrooms: 1, size: 250, owner: user)
      expect(Property.first).to eql(property)
    end

    it "Can't create a Property without a :name" do
      user = User.first.username
      Property.create(price: 3000, description: "Property's description", location: 'San Francisco', property_type: 'Appartment', bedrooms: 2, bathrooms: 1, size: 250, owner: user)
      expect(Property.all.count).to eql(0)
    end

    it "Can't create a Property without a :price" do
      user = User.first.username
      Property.create(name: 'Test Property', description: "Property's description", location: 'San Francisco', property_type: 'Appartment', bedrooms: 2, bathrooms: 1, size: 250, owner: user)
      expect(Property.all.count).to eql(0)
    end

    it "Can't create a Property without a :location" do
      user = User.first.username
      Property.create(name: 'Test Property', price: 3000, description: "Property's description", property_type: 'Appartment', bedrooms: 2, bathrooms: 1, size: 250, owner: user)
      expect(Property.all.count).to eql(0)
    end

    it "Can't create a Property without a :property_type" do
      user = User.first.username
      Property.create(name: 'Test Property', price: 3000, description: "Property's description", location: 'San Francisco', bedrooms: 2, bathrooms: 1, size: 250, owner: user)
      expect(Property.all.count).to eql(0)
    end

    it "Can't create a Property without a :bedrooms" do
      user = User.first.username
      Property.create(name: 'Test Property', price: 3000, description: "Property's description", location: 'San Francisco', property_type: 'Appartment', bathrooms: 1, size: 250, owner: user)
      expect(Property.all.count).to eql(0)
    end

    it "Can't create a Property without a :bathrooms" do
      user = User.first.username
      Property.create(name: 'Test Property', price: 3000, description: "Property's description", location: 'San Francisco', property_type: 'Appartment', bedrooms: 2, size: 250, owner: user)
      expect(Property.all.count).to eql(0)
    end

    it "Can't create a Property without a :size" do
      user = User.first.username
      Property.create(name: 'Test Property', price: 3000, description: "Property's description", location: 'San Francisco', property_type: 'Appartment', bedrooms: 2, bathrooms: 1, owner: user)
      expect(Property.all.count).to eql(0)
    end
  end

  context 'Integration Tests' do
    it 'Same User can create multiple Properties' do
      user = User.first.username
      Property.create(name: 'Property1', price: 3000, description: "Property's description", location: 'San Francisco', property_type: 'Appartment', bedrooms: 2, bathrooms: 1, size: 250, owner: user)
      Property.create(name: 'Property2', price: 2500, description: "Property's description", location: 'Chicago', property_type: 'Appartment', bedrooms: 1, bathrooms: 1, size: 200, owner: user)
      expect(Property.all.count).to eql(2)
    end

    it "Can't set Properties without Owners" do
      Property.create(name: 'Test Property', price: 3000, description: "Property's description", location: 'San Francisco', property_type: 'Appartment', bedrooms: 2, bathrooms: 1, size: 250)
      expect(Property.all.count).to eql(0)
    end
  end
end
