class PropertiesController < ApplicationController
  def index
    render json: Property.all
  end

  def show
  end

  def create
    if Property.create(property_params)
      render json: { status: 'Success', code: 101, message: 'Property created', payload: { id: Property.last.id } }
    else
      render json: { status: 'Error', code: 3100, message: 'Error during the property creation' }
    end
  end

  def destroy
  end

  private def property_params
    params.require(:property).permit(:name, :price, :description, :location, :property_type, :bedrooms, :bathrooms, :size, :owner)
  end
end
