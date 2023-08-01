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
require 'date'

# Unit tests for Conekta::OrdersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'OrdersApi' do
  before do
    # run before each test
    @api_instance = Conekta::OrdersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrdersApi' do
    it 'should create an instance of OrdersApi' do
      expect(@api_instance).to be_instance_of(Conekta::OrdersApi)
    end
  end

  # unit tests for cancel_order
  # Cancel Order
  # Cancel an order that has been previously created.
  # @param id Identifier of the resource
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [OrderResponse]
  describe 'cancel_order test' do
    it 'should work' do
      id = 'ord_2tqaGQYZyvBsMKEgs'
      response = @api_instance.cancel_order(id)

      expect(response).to be_instance_of(Conekta::OrderResponse)
      expect(response.id).to eq(id)
      expect(response.payment_status).to eq('canceled')
    end
  end

  # unit tests for create_order
  # Create order
  # Create a new order.
  # @param order_request requested field for order
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [OrderResponse]
  describe 'create_order test' do
    it 'error' do
      expect {
        request = Conekta::OrderRequest.new({
                                              customer_info: Conekta::CustomerInfoJustCustomerId.new({ customer_id: 'cus_2tKcHxhTz7xU5SymF2' })
                                            })

        @api_instance.create_order(request)
      }.to raise_error do |error|
        expect(error.code).to eq(402)
      end
    end
    it 'cash' do
      thirty_days_from_now = DateTime.now + 30 # Sumamos 30 días a la fecha actual
      unix_timestamp = (thirty_days_from_now - DateTime.new(1970, 1, 1)).to_i
      products = [
        Conekta::Product.new({
                               name: "toshiba",
                               quantity: 1,
                               unit_price: 1555
                             })
      ]
      charges = Array.new(1)
      charges[0] = Conekta::ChargeRequest.new({ amount: 1555,
                                                payment_method: Conekta::ChargeRequestPaymentMethod.new(
                                                  {
                                                    expires_at: unix_timestamp,
                                                    type: 'cash'
                                                  }
                                                )
                                              })
      request = Conekta::OrderRequest.new(
        {
          currency: "MXN",
          pre_authorize: false,
          customer_info: Conekta::CustomerInfoJustCustomerId.new({ customer_id: 'cus_2tKcHxhTz7xU5SymF' }),
          line_items: products,
          charges: charges
        }
      )

      response = @api_instance.create_order(request, { accept_language: 'es' })

      expect(response).to be_instance_of(Conekta::OrderResponse)
      expect(response.payment_status).to eq('pending_payment')
      expect(response.currency).to eq('MXN')
      expect(response.charges.data.first.payment_method).to be_instance_of(Conekta::PaymentMethodCash)
    end

    it 'msi' do
      products = [
        Conekta::Product.new({
                               name: "toshiba",
                               quantity: 1,
                               unit_price: 1555
                             })
      ]
      checkout = Conekta::CheckoutRequest.new({
                                                allowed_payment_methods: %w[cash card bank_transfer],
                                                monthly_installments_enabled: true,
                                                monthly_installments_options: [3, 6, 12]
                                              })
      request = Conekta::OrderRequest.new({
                                            currency: "MXN",
                                            customer_info: Conekta::CustomerInfoJustCustomerId.new({ customer_id: 'cus_msi_2o8jK3TDtejmz1sYd' }),
                                            line_items: products,
                                            checkout: checkout,
                                            metadata: { test: "true" }
                                          })
      response = @api_instance.create_order(request)

      expect(response).to be_instance_of(Conekta::OrderResponse)
      expect(response.checkout).to be_instance_of(Conekta::OrderResponseCheckout)
      expect(response.checkout.id).to be_truthy
      expect(response.id).to eq('ord_msi_2tUgccjdQJ7SdBrXb')
      expect(response.checkout.type).to eq('Integration')
    end
    it 'card' do
      products = [
        Conekta::Product.new({
                               name: "toshiba",
                               quantity: 1,
                               unit_price: 1555
                             })
      ]
      checkout = Conekta::CheckoutRequest.new({
                                                allowed_payment_methods: %w[cash card bank_transfer],
                                                on_demand_enabled: true
                                              })
      request = Conekta::OrderRequest.new({
                                            currency: "MXN",
                                            customer_info: Conekta::CustomerInfoJustCustomerId.new({ customer_id: 'cus_save_card_2o8jK3TDtejmz1sYd' }),
                                            line_items: products,
                                            checkout: checkout,
                                            metadata: { test: "true" }
                                          })
      response = @api_instance.create_order(request)

      expect(response).to be_instance_of(Conekta::OrderResponse)
      expect(response.checkout).to be_instance_of(Conekta::OrderResponseCheckout)
      expect(response.checkout.id).to be_truthy
      expect(response.id).to eq('ord_saved_card_2tUgccjdQJ7SdBrXb')
      expect(response.checkout.type).to eq('Integration')
    end
  end

  # unit tests for get_order_by_id
  # Get Order
  # Info for a specific order
  # @param id Identifier of the resource
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [OrderResponse]
  describe 'get_order_by_id test' do
    it 'not found' do
      expect {
        @api_instance.get_order_by_id('ord_2tUhuyzqLi6UJE9D12', { accept_language: 'en' })
      }.to raise_error do |error|
        expect(error.code).to eq(404)
      end
    end
    it 'bank transfer' do
      id = 'ord_2tUyGSk9TNWUcyvjn'

      response = @api_instance.get_order_by_id(id, { accept_language: 'es' })

      expect(response).to be_instance_of(Conekta::OrderResponse)
      expect(response.charges.data.length).to eq(1)
      expect(response.charges.data.first.payment_method).to be_instance_of(Conekta::PaymentMethodBankTransfer)
      expect(response.charges.data.first.payment_method.object).to eq('bank_transfer_payment')
    end
  end

  # unit tests for get_orders
  # Get a list of Orders
  # Get order details in the form of a list
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @option opts [Integer] :limit The numbers of items to return, the maximum value is 250
  # @option opts [String] :search General order search, e.g. by mail, reference etc.
  # @option opts [String] :_next next page
  # @option opts [String] :previous previous page
  # @return [GetOrdersResponse]
  describe 'get_orders test' do
    it 'should work' do
      response = @api_instance.get_orders({ accept_language: 'en', limit: 20 })

      expect(response).to be_instance_of(Conekta::GetOrdersResponse)
      expect(response.has_more).to be_truthy
      expect(response.next_page_url).to eq('https://api-core.stg.conekta.io/orders?next=ord_2tNDyQbJacvUZiyfp')
      expect(response.previous_page_url).to be_falsey
      expect(response.data.first.charges.data.first.payment_method).to be_instance_of(Conekta::PaymentMethodCard)
      expect(response.data[9].charges.data.first.payment_method).to be_instance_of(Conekta::PaymentMethodCash)
    end
    it 'next' do
      response = @api_instance.get_orders({ accept_language: 'en', limit: 19, _next: 'ord_2tNDyQbJacvUZiyfp' })

      expect(response).to be_instance_of(Conekta::GetOrdersResponse)
      expect(response.has_more).to be_truthy
      expect(response.next_page_url).to eq('https://api-core.stg.conekta.io/orders?limit=19&next=ord_2tKZmA749BLsMRgBg')
      expect(response.previous_page_url).to eq('https://api-core.stg.conekta.io/orders?limit=19&previous=ord_2tNDwzeMnVSU9kKHR')
      expect(response.data.length).to eq(19)
      expect(response.data.first.customer_info.customer_id).to eq('cus_2tKcHxhTz7xU5SymF')
      expect(response.data.first.shipping_contact.address.country).to eq('mx')
    end
    it 'previous' do
      response = @api_instance.get_orders({ accept_language: 'en', limit: 21, previous: 'ord_2tHuXwkFTkjAbMGjU' })

      expect(response).to be_instance_of(Conekta::GetOrdersResponse)
      expect(response.has_more).to be_truthy
      expect(response.data.length).to eq(21)
      expect(response.data.first.customer_info.customer_id).to eq('cus_2tKcHxhTz7xU5SymF')
      expect(response.data.first.shipping_contact.address.country).to eq('mx')
    end
    it 'search' do
      response = @api_instance.get_orders({ accept_language: 'en', limit: 22, search: 'ord_2tNDzhA4Akmzj11AS' })

      expect(response).to be_instance_of(Conekta::GetOrdersResponse)
      expect(response.has_more).to be_falsey
      expect(response.data.length).to eq(1)
      expect(response.data.first.customer_info.customer_id).to eq('cus_2tKcHxhTz7xU5SymF')
      expect(response.data.first.id).to eq('ord_2tNDzhA4Akmzj11AS')
      expect(response.data.first.shipping_contact.address.postal_code).to eq('06100')
    end
  end

  # unit tests for order_cancel_refund
  # Cancel Refund
  # A refunded order describes the items, amount, and reason an order is being refunded.
  # @param id Identifier of the resource
  # @param refund_id refund identifier
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [OrderResponse]
  describe 'order_cancel_refund test' do
    it 'should work' do
      id = 'ord_2tV52JvSom2w3E8bX'
      refund_id = '6407b5bee1329a000175ba11'

      response = @api_instance.order_cancel_refund(id, refund_id)

      expect(response).to be_instance_of(Conekta::OrderResponse)
      expect(response.id).to eq(id)
      expect(response.charges.data.first.refunds.data.first.id).to eq(refund_id)
    end
  end

  # unit tests for order_refund
  # Refund Order
  # A refunded order describes the items, amount, and reason an order is being refunded.
  # @param id Identifier of the resource
  # @param order_refund_request requested field for a refund
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [OrderResponse]
  describe 'order_refund test' do
    it 'should work' do
      id = 'ord_2tV52JvSom2w3E8bX'
      request = Conekta::OrderRefundRequest.new({
                                                  amount: 15000,
                                                  reason: "requested_by_client"
                                                })

      response = @api_instance.order_refund(id, request)

      expect(response).to be_instance_of(Conekta::OrderResponse)
      expect(response.payment_status).to eq('partially_refunded')
      expect(response.charges.data.first.status).to eq('partially_refunded')
      expect(response.charges.data.first.refunds.data.first.object).to eq('refund')
      expect(response.charges.data.first.payment_method).to be_instance_of(Conekta::PaymentMethodCard)
    end
  end

  # unit tests for orders_create_capture
  # Capture Order
  # Processes an order that has been previously authorized.
  # @param id Identifier of the resource
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @option opts [OrderCaptureRequest] :order_capture_request requested fields for capture order
  # @return [OrderResponse]
  describe 'orders_create_capture test' do
    it 'should work' do
      id = 'ord_2tVKoTd79XK1GqJme'

      response = @api_instance.orders_create_capture(id, { accept_language: 'en' })

      expect(response).to be_instance_of(Conekta::OrderResponse)
      expect(response.payment_status).to eq('paid')
      expect(response.amount).to eq(40000)
    end
    it 'with body' do
      id = 'ord_2tVKoTd79XK1GqJmm'

      response = @api_instance.orders_create_capture(id, { accept_language: 'en', order_capture_request: Conekta::OrderCaptureRequest.new({ amount: 40000 }) })

      expect(response).to be_instance_of(Conekta::OrderResponse)
      expect(response.payment_status).to eq('paid')
      expect(response.amount).to eq(40000)
    end
  end

  # unit tests for update_order
  # Update Order
  # Update an existing Order.
  # @param id Identifier of the resource
  # @param order_update_request requested field for an order
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @return [OrderResponse]
  describe 'update_order test' do
    it 'should work' do

      id = 'ord_2tVPCGRXnMXKdvcsj'
      products = [
        Conekta::Product.new({
                               name: "Pago Mensualidad enero",
                               quantity: 2,
                               unit_price: 41000,
                               description: "Mes de enero.",
                               tags: { "Pago": "Pago mensualidad" }
                             })
      ]
      request = Conekta::OrderUpdateRequest.new({
                                                  line_items: products
                                                })
      response = @api_instance.update_order(id, request)

      expect(response).to be_instance_of(Conekta::OrderResponse)
      expect(response.created_at).not_to eq(response.updated_at)
      expect(response.line_items.data.first.unit_price).to eq(products.first.unit_price)
    end
  end

end