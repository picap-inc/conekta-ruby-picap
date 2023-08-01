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

# Unit tests for Conekta::PaymentMethodsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PaymentMethodsApi' do
  before do
    # run before each test
    @api_instance = Conekta::PaymentMethodsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentMethodsApi' do
    it 'should create an instance of PaymentMethodsApi' do
      expect(@api_instance).to be_instance_of(Conekta::PaymentMethodsApi)
    end
  end

  # unit tests for create_customer_payment_methods
  # Create Payment Method
  # Create a payment method for a customer.
  # @param id Identifier of the resource
  # @param create_customer_payment_methods_request requested field for customer payment methods
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [CreateCustomerPaymentMethodsResponse]
  describe 'create_customer_payment_methods test' do
    it 'should work' do
      id = "cus_2tXyF9BwPG14UMkkg"
      request = Conekta::PaymentMethodCashRequest.new({ type: 'oxxo_recurrent' })

      response = @api_instance.create_customer_payment_methods(id, request)

      expect(response).to be_instance_of(Conekta::PaymentMethodCashResponse)
      expect(response.parent_id).to eq(id)
      expect(response.id).to be_truthy
      expect(response.barcode_url).to be_truthy

    end
  end

  # unit tests for delete_customer_payment_methods
  # Delete Payment Method
  # Delete an existing payment method
  # @param id Identifier of the resource
  # @param payment_method_id Identifier of the payment method
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [UpdateCustomerPaymentMethodsResponse]
  describe 'delete_customer_payment_methods test' do
    it 'should work' do
      id = "cus_2tZWxbTPtQgGJGh8P"
      payment_method_id = "src_2tZWxbTPtQgGJGh8R"

      response = @api_instance.delete_customer_payment_methods(id, payment_method_id, { accept_language: 'en' })

      expect(response).to be_instance_of(Conekta::PaymentMethodCardResponse)
      expect(response.parent_id).to eq(id)
      expect(response.id).to eq(payment_method_id)
    end
  end

  # unit tests for get_customer_payment_methods
  # Get Payment Methods
  # Get a list of Payment Methods
  # @param id Identifier of the resource
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @option opts [Integer] :limit The numbers of items to return, the maximum value is 250
  # @option opts [String] :_next next page
  # @option opts [String] :previous previous page
  # @option opts [String] :search General order search, e.g. by mail, reference etc.
  # @return [GetPaymentMethodResponse]
  describe 'get_customer_payment_methods test' do
    it 'should work' do
      id = 'src_2tbd5Bgy67RL9oycM'
      response = @api_instance.get_customer_payment_methods(id)

      expect(response).to be_instance_of(Conekta::GetPaymentMethodResponse)
      expect(response.data.first).to be_instance_of(Conekta::PaymentMethodCardResponse)
      expect(response.data.first.id).to eq(id)
      expect(response.next_page_url).to be_falsey
      expect(response.previous_page_url).to be_falsey
      expect(response.has_more).to be_falsey
    end
  end

  # unit tests for update_customer_payment_methods
  # Update Payment Method
  # Gets a payment Method that corresponds to a customer ID.
  # @param id Identifier of the resource
  # @param payment_method_id Identifier of the payment method
  # @param update_payment_methods requested field for customer payment methods
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [UpdateCustomerPaymentMethodsResponse]
  describe 'update_customer_payment_methods test' do
    it 'should work' do
      id = "cus_2tZWxbTPtQgGJGh8P"
      payment_method_id = "src_2tZWxbTPtQgGJGh8R"
      request = Conekta::UpdatePaymentMethods.new({
                                                    name: 'name of person'
                                                  })

      response = @api_instance.update_customer_payment_methods(id, payment_method_id, request)

      expect(response).to be_instance_of(Conekta::PaymentMethodCardResponse)
      expect(response.name).to eq(request.name)
      expect(response.parent_id).to eq(id)
      expect(response.id).to eq(payment_method_id)
    end
  end

end