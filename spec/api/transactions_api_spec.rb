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

# Unit tests for Conekta::TransactionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TransactionsApi' do
  before do
    # run before each test
    @api_instance = Conekta::TransactionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TransactionsApi' do
    it 'should create an instance of TransactionsApi' do
      expect(@api_instance).to be_instance_of(Conekta::TransactionsApi)
    end
  end

  # unit tests for get_transaction
  # Get transaction
  # Get the details of a transaction
  # @param id Identifier of the resource
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [TransactionResponse]
  describe 'get_transaction test' do
    it 'should work' do
      id = '6456b6dfac0fd40001a64eb8'

      response = @api_instance.get_transaction(id)

      expect(response).to be_instance_of(Conekta::TransactionResponse)
      expect(response.object).to eq('transaction')
      expect(response.id).to eq(id)
    end
  end

  # unit tests for get_transactions
  # Get List transactions
  # Get transaction details in the form of a list
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @option opts [Integer] :limit The numbers of items to return, the maximum value is 250
  # @option opts [String] :search General order search, e.g. by mail, reference etc.
  # @option opts [String] :_next next page
  # @option opts [String] :previous previous page
  # @return [GetTransactionsResponse]
  describe 'get_transactions test' do
    it 'should work' do
      response = @api_instance.get_transactions({limit: 2})

      expect(response).to be_instance_of(Conekta::GetTransactionsResponse)
      expect(response.object).to eq('list')
      expect(response.has_more).to eq(true)
      expect(response.next_page_url).not_to be_nil
      expect(response.previous_page_url).to be_nil
      expect(response.data).not_to be_nil
      expect(response.data.size).to eq(2)
      expect(response.data[0].id).to eq('644acceb0a49bb001b2a04aa')
      expect(response.data[1].id).to eq('644ac60691882d001bec62b3')
    end
  end

end
