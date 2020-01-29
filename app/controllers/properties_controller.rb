class PropertiesController < ApplicationController
  def index
  end

  def show
  end

  def create
    if Property.create(property_params)
      render json: { status: 'Success', code: 101, message: 'Property created' }
    else
      render json: { status: 'Error', code: 3100, message: 'Error during the property creation' }
    end
  end

  def destroy
  end

  private def property_params
    params.require(:property).permit(:name, :price, :description, :location, :type, :bedrooms, :bathrooms, :size, :owner)
  end
end
