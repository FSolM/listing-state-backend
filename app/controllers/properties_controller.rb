class PropertiesController < ApplicationController
  def index
    render json: { status: 'Success', code: 101, message: 'Data retrieved', payload: { data: Property.all } }
  end

  def show
    property = Property.find(params[:id])
    render json: { status: 'Success', code: 101, message: 'Property data found', payload: { data: property } }
    rescue SearchError
      render json: { status: 'Error', code: 3101, message: 'Property not found' }
    end
  end

  def create
    if Property.create(property_params)
      render json: { status: 'Success', code: 101, message: 'Property created', payload: { id: Property.last.id } }
    else
      render json: { status: 'Error', code: 3100, message: 'Error during the property creation' }
    end
  end

  def destroy
    if Property.find(params[:id]).destroy
      render json: { status: 'Success', code: 101, message: 'Property deleted' }
    else
      render json: { status: 'Error', code: 3102, message: "Porperty couldn't be destroyed" }
    end
  end

  private

  def property_params
    params.permit(:name, :price, :description, :image, :location, :property_type, :bedrooms, :bathrooms, :size, :owner)
  end
end
