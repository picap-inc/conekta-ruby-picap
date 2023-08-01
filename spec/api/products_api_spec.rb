=begin
#Conekta API

#Conekta sdk

The version of the OpenAPI document: 2.1.0
Contact: engineering@conekta.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Conekta::ProductsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ProductsApi' do
  before do
    # run before each test
    @api_instance = Conekta::ProductsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProductsApi' do
    it 'should create an instance of ProductsApi' do
      expect(@api_instance).to be_instance_of(Conekta::ProductsApi)
    end
  end

  # unit tests for orders_create_product
  # Create Product
  # Create a new product for an existing order.
  # @param id Identifier of the resource
  # @param product requested field for a product
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [ProductOrderResponse]
  describe 'orders_create_product test' do
    it 'should work' do
      id = "ord_2tVyWPnCPWbrV37mW"
      request = Conekta::Product.new({
                                       description: "Mes de marz.",
                                       name: "Pago Mensualidad test",
                                       quantity: 1,
                                       unit_price: 1000,
                                       tags: ["Pago 2", "Pago mensualidad 2"]
                                     })

      response = @api_instance.orders_create_product(id, request)

      expect(response).to be_instance_of(Conekta::ProductOrderResponse)
      expect(response.parent_id).to eq(id)
      expect(response.object).to eq('line_item')
    end
  end

  # unit tests for orders_delete_product
  # Delete Product
  # Delete product for an existing orden
  # @param id Identifier of the resource
  # @param line_item_id identifier
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [ProductOrderResponse]
  describe 'orders_delete_product test' do
    it 'should work' do
      response = @api_instance.orders_delete_product('ord_2tVyWPnCPWbrV37mW', 'line_item_2tVz8UkyWhSxLfUd7')

      expect(response).to be_instance_of(Conekta::ProductOrderResponse)
      expect(response.id).to eq('line_item_2tVz8UkyWhSxLfUd7')
      expect(response.parent_id).to eq('ord_2tVyWPnCPWbrV37mW')
    end
  end

  # unit tests for orders_update_product
  # Update Product
  # Update an existing product for an existing orden
  # @param id Identifier of the resource
  # @param line_item_id identifier
  # @param update_product requested field for products
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [ProductOrderResponse]
  describe 'orders_update_product test' do
    it 'should work' do
      id = "ord_2tVyWPnCPWbrV37mW"
      product_id = "line_item_2tVz8UkyWhSxLfUd7"
      request = Conekta::UpdateProduct.new({description: "Pago Mensualidad"})

      response = @api_instance.orders_update_product(id, product_id, request)

      expect(response).to be_instance_of(Conekta::ProductOrderResponse)
      expect(response.parent_id).to eq(id)
      expect(response.id).to eq(product_id)
    end
  end

end
