# conekta

Conekta - the Ruby gem for the Conekta API

Conekta sdk

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 2.1.0
- Package version: 6.0.2
- Build date: 2023-12-26T16:28:22.789356234Z[Etc/UTC]
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
For more information, please visit [https://github.com/conekta/openapi/issues](https://github.com/conekta/openapi/issues)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build conekta.gemspec
```

Then either install the gem locally:

```shell
gem install ./conekta-6.0.2.gem
```

(for development, run `gem install --dev ./conekta-6.0.2.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'conekta', '~> 6.0.2'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/conekta/conekta-ruby, then add the following in the Gemfile:

    gem 'conekta', :git => 'https://github.com/conekta/conekta-ruby.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'conekta'

# Setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
  # Configure a proc to get access tokens in lieu of the static access_token configuration
  config.access_token_getter = -> { 'YOUR TOKEN GETTER PROC' } 
  # Configure faraday connection
  config.configure_faraday_connection { |connection| 'YOUR CONNECTION CONFIG PROC' }
end

api_instance = Conekta::AntifraudApi.new
create_risk_rules_data = Conekta::CreateRiskRulesData.new({description: 'this client email was verified at 20/09/22 by internal process', field: 'email | phone | card_token', value: 'email@example.com | 818081808180 | src_2qUCNd5AyQqfPMBuV'}) # CreateRiskRulesData | requested field for blacklist rule
opts = {
  accept_language: 'es' # String | Use for knowing which language to use
}

begin
  #Create blacklisted rule
  result = api_instance.create_rule_blacklist(create_risk_rules_data, opts)
  p result
rescue Conekta::ApiError => e
  puts "Exception when calling AntifraudApi->create_rule_blacklist: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.conekta.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Conekta::AntifraudApi* | [**create_rule_blacklist**](docs/AntifraudApi.md#create_rule_blacklist) | **POST** /antifraud/blacklists | Create blacklisted rule
*Conekta::AntifraudApi* | [**create_rule_whitelist**](docs/AntifraudApi.md#create_rule_whitelist) | **POST** /antifraud/whitelists | Create whitelisted rule
*Conekta::AntifraudApi* | [**delete_rule_blacklist**](docs/AntifraudApi.md#delete_rule_blacklist) | **DELETE** /antifraud/blacklists/{id} | Delete blacklisted rule
*Conekta::AntifraudApi* | [**delete_rule_whitelist**](docs/AntifraudApi.md#delete_rule_whitelist) | **DELETE** /antifraud/whitelists/{id} | Delete whitelisted rule
*Conekta::AntifraudApi* | [**get_rule_blacklist**](docs/AntifraudApi.md#get_rule_blacklist) | **GET** /antifraud/blacklists | Get list of blacklisted rules
*Conekta::AntifraudApi* | [**get_rule_whitelist**](docs/AntifraudApi.md#get_rule_whitelist) | **GET** /antifraud/whitelists | Get a list of whitelisted rules
*Conekta::ApiKeysApi* | [**create_api_key**](docs/ApiKeysApi.md#create_api_key) | **POST** /api_keys | Create Api Key
*Conekta::ApiKeysApi* | [**delete_api_key**](docs/ApiKeysApi.md#delete_api_key) | **DELETE** /api_keys/{id} | Delete Api Key
*Conekta::ApiKeysApi* | [**get_api_key**](docs/ApiKeysApi.md#get_api_key) | **GET** /api_keys/{id} | Get Api Key
*Conekta::ApiKeysApi* | [**get_api_keys**](docs/ApiKeysApi.md#get_api_keys) | **GET** /api_keys | Get list of Api Keys
*Conekta::ApiKeysApi* | [**update_api_key**](docs/ApiKeysApi.md#update_api_key) | **PUT** /api_keys/{id} | Update Api Key
*Conekta::BalancesApi* | [**get_balance**](docs/BalancesApi.md#get_balance) | **GET** /balance | Get a company's balance
*Conekta::ChargesApi* | [**get_charges**](docs/ChargesApi.md#get_charges) | **GET** /charges | Get A List of Charges
*Conekta::ChargesApi* | [**orders_create_charge**](docs/ChargesApi.md#orders_create_charge) | **POST** /orders/{id}/charges | Create charge
*Conekta::ChargesApi* | [**update_charge**](docs/ChargesApi.md#update_charge) | **PUT** /charges/{id} | Update a charge
*Conekta::CompaniesApi* | [**get_companies**](docs/CompaniesApi.md#get_companies) | **GET** /companies | Get List of Companies
*Conekta::CompaniesApi* | [**get_company**](docs/CompaniesApi.md#get_company) | **GET** /companies/{id} | Get Company
*Conekta::CustomersApi* | [**create_customer**](docs/CustomersApi.md#create_customer) | **POST** /customers | Create customer
*Conekta::CustomersApi* | [**create_customer_fiscal_entities**](docs/CustomersApi.md#create_customer_fiscal_entities) | **POST** /customers/{id}/fiscal_entities | Create Fiscal Entity
*Conekta::CustomersApi* | [**delete_customer_by_id**](docs/CustomersApi.md#delete_customer_by_id) | **DELETE** /customers/{id} | Delete Customer
*Conekta::CustomersApi* | [**get_customer_by_id**](docs/CustomersApi.md#get_customer_by_id) | **GET** /customers/{id} | Get Customer
*Conekta::CustomersApi* | [**get_customers**](docs/CustomersApi.md#get_customers) | **GET** /customers | Get a list of customers
*Conekta::CustomersApi* | [**update_customer**](docs/CustomersApi.md#update_customer) | **PUT** /customers/{id} | Update customer
*Conekta::CustomersApi* | [**update_customer_fiscal_entities**](docs/CustomersApi.md#update_customer_fiscal_entities) | **PUT** /customers/{id}/fiscal_entities/{fiscal_entities_id} | Update  Fiscal Entity
*Conekta::DiscountsApi* | [**orders_create_discount_line**](docs/DiscountsApi.md#orders_create_discount_line) | **POST** /orders/{id}/discount_lines | Create Discount
*Conekta::DiscountsApi* | [**orders_delete_discount_lines**](docs/DiscountsApi.md#orders_delete_discount_lines) | **DELETE** /orders/{id}/discount_lines/{discount_lines_id} | Delete Discount
*Conekta::DiscountsApi* | [**orders_get_discount_line**](docs/DiscountsApi.md#orders_get_discount_line) | **GET** /orders/{id}/discount_lines/{discount_lines_id} | Get Discount
*Conekta::DiscountsApi* | [**orders_get_discount_lines**](docs/DiscountsApi.md#orders_get_discount_lines) | **GET** /orders/{id}/discount_lines | Get a List of Discount
*Conekta::DiscountsApi* | [**orders_update_discount_lines**](docs/DiscountsApi.md#orders_update_discount_lines) | **PUT** /orders/{id}/discount_lines/{discount_lines_id} | Update Discount
*Conekta::EventsApi* | [**get_event**](docs/EventsApi.md#get_event) | **GET** /events/{id} | Get Event
*Conekta::EventsApi* | [**get_events**](docs/EventsApi.md#get_events) | **GET** /events | Get list of Events
*Conekta::EventsApi* | [**resend_event**](docs/EventsApi.md#resend_event) | **POST** /events/{event_id}/webhook_logs/{webhook_log_id}/resend | Resend Event
*Conekta::LogsApi* | [**get_log_by_id**](docs/LogsApi.md#get_log_by_id) | **GET** /logs/{id} | Get Log
*Conekta::LogsApi* | [**get_logs**](docs/LogsApi.md#get_logs) | **GET** /logs | Get List Of Logs
*Conekta::OrdersApi* | [**cancel_order**](docs/OrdersApi.md#cancel_order) | **POST** /orders/{id}/cancel | Cancel Order
*Conekta::OrdersApi* | [**create_order**](docs/OrdersApi.md#create_order) | **POST** /orders | Create order
*Conekta::OrdersApi* | [**get_order_by_id**](docs/OrdersApi.md#get_order_by_id) | **GET** /orders/{id} | Get Order
*Conekta::OrdersApi* | [**get_orders**](docs/OrdersApi.md#get_orders) | **GET** /orders | Get a list of Orders
*Conekta::OrdersApi* | [**order_cancel_refund**](docs/OrdersApi.md#order_cancel_refund) | **DELETE** /orders/{id}/refunds/{refund_id} | Cancel Refund
*Conekta::OrdersApi* | [**order_refund**](docs/OrdersApi.md#order_refund) | **POST** /orders/{id}/refunds | Refund Order
*Conekta::OrdersApi* | [**orders_create_capture**](docs/OrdersApi.md#orders_create_capture) | **POST** /orders/{id}/capture | Capture Order
*Conekta::OrdersApi* | [**update_order**](docs/OrdersApi.md#update_order) | **PUT** /orders/{id} | Update Order
*Conekta::PaymentLinkApi* | [**cancel_checkout**](docs/PaymentLinkApi.md#cancel_checkout) | **PUT** /checkouts/{id}/cancel | Cancel Payment Link
*Conekta::PaymentLinkApi* | [**create_checkout**](docs/PaymentLinkApi.md#create_checkout) | **POST** /checkouts | Create Unique Payment Link
*Conekta::PaymentLinkApi* | [**email_checkout**](docs/PaymentLinkApi.md#email_checkout) | **POST** /checkouts/{id}/email | Send an email
*Conekta::PaymentLinkApi* | [**get_checkout**](docs/PaymentLinkApi.md#get_checkout) | **GET** /checkouts/{id} | Get a payment link by ID
*Conekta::PaymentLinkApi* | [**get_checkouts**](docs/PaymentLinkApi.md#get_checkouts) | **GET** /checkouts | Get a list of payment links
*Conekta::PaymentLinkApi* | [**sms_checkout**](docs/PaymentLinkApi.md#sms_checkout) | **POST** /checkouts/{id}/sms | Send an sms
*Conekta::PaymentMethodsApi* | [**create_customer_payment_methods**](docs/PaymentMethodsApi.md#create_customer_payment_methods) | **POST** /customers/{id}/payment_sources | Create Payment Method
*Conekta::PaymentMethodsApi* | [**delete_customer_payment_methods**](docs/PaymentMethodsApi.md#delete_customer_payment_methods) | **DELETE** /customers/{id}/payment_sources/{payment_method_id} | Delete Payment Method
*Conekta::PaymentMethodsApi* | [**get_customer_payment_methods**](docs/PaymentMethodsApi.md#get_customer_payment_methods) | **GET** /customers/{id}/payment_sources | Get Payment Methods
*Conekta::PaymentMethodsApi* | [**update_customer_payment_methods**](docs/PaymentMethodsApi.md#update_customer_payment_methods) | **PUT** /customers/{id}/payment_sources/{payment_method_id} | Update Payment Method
*Conekta::PlansApi* | [**create_plan**](docs/PlansApi.md#create_plan) | **POST** /plans | Create Plan
*Conekta::PlansApi* | [**delete_plan**](docs/PlansApi.md#delete_plan) | **DELETE** /plans/{id} | Delete Plan
*Conekta::PlansApi* | [**get_plan**](docs/PlansApi.md#get_plan) | **GET** /plans/{id} | Get Plan
*Conekta::PlansApi* | [**get_plans**](docs/PlansApi.md#get_plans) | **GET** /plans | Get A List of Plans
*Conekta::PlansApi* | [**update_plan**](docs/PlansApi.md#update_plan) | **PUT** /plans/{id} | Update Plan
*Conekta::ProductsApi* | [**orders_create_product**](docs/ProductsApi.md#orders_create_product) | **POST** /orders/{id}/line_items | Create Product
*Conekta::ProductsApi* | [**orders_delete_product**](docs/ProductsApi.md#orders_delete_product) | **DELETE** /orders/{id}/line_items/{line_item_id} | Delete Product
*Conekta::ProductsApi* | [**orders_update_product**](docs/ProductsApi.md#orders_update_product) | **PUT** /orders/{id}/line_items/{line_item_id} | Update Product
*Conekta::ShippingContactsApi* | [**create_customer_shipping_contacts**](docs/ShippingContactsApi.md#create_customer_shipping_contacts) | **POST** /customers/{id}/shipping_contacts | Create a shipping contacts
*Conekta::ShippingContactsApi* | [**delete_customer_shipping_contacts**](docs/ShippingContactsApi.md#delete_customer_shipping_contacts) | **DELETE** /customers/{id}/shipping_contacts/{shipping_contacts_id} | Delete shipping contacts
*Conekta::ShippingContactsApi* | [**update_customer_shipping_contacts**](docs/ShippingContactsApi.md#update_customer_shipping_contacts) | **PUT** /customers/{id}/shipping_contacts/{shipping_contacts_id} | Update shipping contacts
*Conekta::ShippingsApi* | [**orders_create_shipping**](docs/ShippingsApi.md#orders_create_shipping) | **POST** /orders/{id}/shipping_lines | Create Shipping
*Conekta::ShippingsApi* | [**orders_delete_shipping**](docs/ShippingsApi.md#orders_delete_shipping) | **DELETE** /orders/{id}/shipping_lines/{shipping_id} | Delete Shipping
*Conekta::ShippingsApi* | [**orders_update_shipping**](docs/ShippingsApi.md#orders_update_shipping) | **PUT** /orders/{id}/shipping_lines/{shipping_id} | Update Shipping
*Conekta::SubscriptionsApi* | [**cancel_subscription**](docs/SubscriptionsApi.md#cancel_subscription) | **POST** /customers/{id}/subscription/cancel | Cancel Subscription
*Conekta::SubscriptionsApi* | [**create_subscription**](docs/SubscriptionsApi.md#create_subscription) | **POST** /customers/{id}/subscription | Create Subscription
*Conekta::SubscriptionsApi* | [**get_all_events_from_subscription**](docs/SubscriptionsApi.md#get_all_events_from_subscription) | **GET** /customers/{id}/subscription/events | Get Events By Subscription
*Conekta::SubscriptionsApi* | [**get_subscription**](docs/SubscriptionsApi.md#get_subscription) | **GET** /customers/{id}/subscription | Get Subscription
*Conekta::SubscriptionsApi* | [**pause_subscription**](docs/SubscriptionsApi.md#pause_subscription) | **POST** /customers/{id}/subscription/pause | Pause Subscription
*Conekta::SubscriptionsApi* | [**resume_subscription**](docs/SubscriptionsApi.md#resume_subscription) | **POST** /customers/{id}/subscription/resume | Resume Subscription
*Conekta::SubscriptionsApi* | [**update_subscription**](docs/SubscriptionsApi.md#update_subscription) | **PUT** /customers/{id}/subscription | Update Subscription
*Conekta::TaxesApi* | [**orders_create_taxes**](docs/TaxesApi.md#orders_create_taxes) | **POST** /orders/{id}/tax_lines | Create Tax
*Conekta::TaxesApi* | [**orders_delete_taxes**](docs/TaxesApi.md#orders_delete_taxes) | **DELETE** /orders/{id}/tax_lines/{tax_id} | Delete Tax
*Conekta::TaxesApi* | [**orders_update_taxes**](docs/TaxesApi.md#orders_update_taxes) | **PUT** /orders/{id}/tax_lines/{tax_id} | Update Tax
*Conekta::TokensApi* | [**create_token**](docs/TokensApi.md#create_token) | **POST** /tokens | Create Token
*Conekta::TransactionsApi* | [**get_transaction**](docs/TransactionsApi.md#get_transaction) | **GET** /transactions/{id} | Get transaction
*Conekta::TransactionsApi* | [**get_transactions**](docs/TransactionsApi.md#get_transactions) | **GET** /transactions | Get List transactions
*Conekta::TransfersApi* | [**get_transfer**](docs/TransfersApi.md#get_transfer) | **GET** /transfers/{id} | Get Transfer
*Conekta::TransfersApi* | [**get_transfers**](docs/TransfersApi.md#get_transfers) | **GET** /transfers | Get a list of transfers
*Conekta::WebhookKeysApi* | [**create_webhook_key**](docs/WebhookKeysApi.md#create_webhook_key) | **POST** /webhook_keys | Create Webhook Key
*Conekta::WebhookKeysApi* | [**delete_webhook_key**](docs/WebhookKeysApi.md#delete_webhook_key) | **DELETE** /webhook_keys/{id} | Delete Webhook key
*Conekta::WebhookKeysApi* | [**get_webhook_key**](docs/WebhookKeysApi.md#get_webhook_key) | **GET** /webhook_keys/{id} | Get Webhook Key
*Conekta::WebhookKeysApi* | [**get_webhook_keys**](docs/WebhookKeysApi.md#get_webhook_keys) | **GET** /webhook_keys | Get List of Webhook Keys
*Conekta::WebhookKeysApi* | [**update_webhook_key**](docs/WebhookKeysApi.md#update_webhook_key) | **PUT** /webhook_keys/{id} | Update Webhook Key
*Conekta::WebhooksApi* | [**create_webhook**](docs/WebhooksApi.md#create_webhook) | **POST** /webhooks | Create Webhook
*Conekta::WebhooksApi* | [**delete_webhook**](docs/WebhooksApi.md#delete_webhook) | **DELETE** /webhooks/{id} | Delete Webhook
*Conekta::WebhooksApi* | [**get_webhook**](docs/WebhooksApi.md#get_webhook) | **GET** /webhooks/{id} | Get Webhook
*Conekta::WebhooksApi* | [**get_webhooks**](docs/WebhooksApi.md#get_webhooks) | **GET** /webhooks | Get List of Webhooks
*Conekta::WebhooksApi* | [**test_webhook**](docs/WebhooksApi.md#test_webhook) | **POST** /webhooks/{id}/test | Test Webhook
*Conekta::WebhooksApi* | [**update_webhook**](docs/WebhooksApi.md#update_webhook) | **PUT** /webhooks/{id} | Update Webhook


## Documentation for Models

 - [Conekta::ApiKeyCreateResponse](docs/ApiKeyCreateResponse.md)
 - [Conekta::ApiKeyRequest](docs/ApiKeyRequest.md)
 - [Conekta::ApiKeyResponse](docs/ApiKeyResponse.md)
 - [Conekta::ApiKeyResponseOnDelete](docs/ApiKeyResponseOnDelete.md)
 - [Conekta::ApiKeyUpdateRequest](docs/ApiKeyUpdateRequest.md)
 - [Conekta::BalanceCommonField](docs/BalanceCommonField.md)
 - [Conekta::BalanceResponse](docs/BalanceResponse.md)
 - [Conekta::BlacklistRuleResponse](docs/BlacklistRuleResponse.md)
 - [Conekta::ChargeOrderResponse](docs/ChargeOrderResponse.md)
 - [Conekta::ChargeOrderResponsePaymentMethod](docs/ChargeOrderResponsePaymentMethod.md)
 - [Conekta::ChargeRequest](docs/ChargeRequest.md)
 - [Conekta::ChargeRequestPaymentMethod](docs/ChargeRequestPaymentMethod.md)
 - [Conekta::ChargeResponse](docs/ChargeResponse.md)
 - [Conekta::ChargeResponseChannel](docs/ChargeResponseChannel.md)
 - [Conekta::ChargeResponsePaymentMethod](docs/ChargeResponsePaymentMethod.md)
 - [Conekta::ChargeResponseRefunds](docs/ChargeResponseRefunds.md)
 - [Conekta::ChargeResponseRefundsData](docs/ChargeResponseRefundsData.md)
 - [Conekta::ChargeUpdateRequest](docs/ChargeUpdateRequest.md)
 - [Conekta::ChargesDataResponse](docs/ChargesDataResponse.md)
 - [Conekta::Checkout](docs/Checkout.md)
 - [Conekta::CheckoutOrderTemplate](docs/CheckoutOrderTemplate.md)
 - [Conekta::CheckoutOrderTemplateCustomerInfo](docs/CheckoutOrderTemplateCustomerInfo.md)
 - [Conekta::CheckoutRequest](docs/CheckoutRequest.md)
 - [Conekta::CheckoutResponse](docs/CheckoutResponse.md)
 - [Conekta::CheckoutsResponse](docs/CheckoutsResponse.md)
 - [Conekta::CompanyFiscalInfoAddressResponse](docs/CompanyFiscalInfoAddressResponse.md)
 - [Conekta::CompanyFiscalInfoResponse](docs/CompanyFiscalInfoResponse.md)
 - [Conekta::CompanyPayoutDestinationResponse](docs/CompanyPayoutDestinationResponse.md)
 - [Conekta::CompanyResponse](docs/CompanyResponse.md)
 - [Conekta::CreateCustomerFiscalEntitiesResponse](docs/CreateCustomerFiscalEntitiesResponse.md)
 - [Conekta::CreateCustomerPaymentMethodsRequest](docs/CreateCustomerPaymentMethodsRequest.md)
 - [Conekta::CreateCustomerPaymentMethodsResponse](docs/CreateCustomerPaymentMethodsResponse.md)
 - [Conekta::CreateRiskRulesData](docs/CreateRiskRulesData.md)
 - [Conekta::Customer](docs/Customer.md)
 - [Conekta::CustomerAddress](docs/CustomerAddress.md)
 - [Conekta::CustomerAntifraudInfo](docs/CustomerAntifraudInfo.md)
 - [Conekta::CustomerAntifraudInfoResponse](docs/CustomerAntifraudInfoResponse.md)
 - [Conekta::CustomerFiscalEntitiesDataResponse](docs/CustomerFiscalEntitiesDataResponse.md)
 - [Conekta::CustomerFiscalEntitiesRequest](docs/CustomerFiscalEntitiesRequest.md)
 - [Conekta::CustomerFiscalEntitiesResponse](docs/CustomerFiscalEntitiesResponse.md)
 - [Conekta::CustomerInfo](docs/CustomerInfo.md)
 - [Conekta::CustomerInfoJustCustomerId](docs/CustomerInfoJustCustomerId.md)
 - [Conekta::CustomerInfoJustCustomerIdResponse](docs/CustomerInfoJustCustomerIdResponse.md)
 - [Conekta::CustomerPaymentMethodRequest](docs/CustomerPaymentMethodRequest.md)
 - [Conekta::CustomerPaymentMethodsData](docs/CustomerPaymentMethodsData.md)
 - [Conekta::CustomerPaymentMethodsRequest](docs/CustomerPaymentMethodsRequest.md)
 - [Conekta::CustomerPaymentMethodsResponse](docs/CustomerPaymentMethodsResponse.md)
 - [Conekta::CustomerResponse](docs/CustomerResponse.md)
 - [Conekta::CustomerResponseShippingContacts](docs/CustomerResponseShippingContacts.md)
 - [Conekta::CustomerShippingContacts](docs/CustomerShippingContacts.md)
 - [Conekta::CustomerShippingContactsAddress](docs/CustomerShippingContactsAddress.md)
 - [Conekta::CustomerShippingContactsDataResponse](docs/CustomerShippingContactsDataResponse.md)
 - [Conekta::CustomerShippingContactsResponse](docs/CustomerShippingContactsResponse.md)
 - [Conekta::CustomerShippingContactsResponseAddress](docs/CustomerShippingContactsResponseAddress.md)
 - [Conekta::CustomerUpdateFiscalEntitiesRequest](docs/CustomerUpdateFiscalEntitiesRequest.md)
 - [Conekta::CustomerUpdateShippingContacts](docs/CustomerUpdateShippingContacts.md)
 - [Conekta::CustomersResponse](docs/CustomersResponse.md)
 - [Conekta::DeleteApiKeysResponse](docs/DeleteApiKeysResponse.md)
 - [Conekta::DeletedBlacklistRuleResponse](docs/DeletedBlacklistRuleResponse.md)
 - [Conekta::DeletedWhitelistRuleResponse](docs/DeletedWhitelistRuleResponse.md)
 - [Conekta::Details](docs/Details.md)
 - [Conekta::DetailsError](docs/DetailsError.md)
 - [Conekta::DiscountLinesDataResponse](docs/DiscountLinesDataResponse.md)
 - [Conekta::DiscountLinesResponse](docs/DiscountLinesResponse.md)
 - [Conekta::EmailCheckoutRequest](docs/EmailCheckoutRequest.md)
 - [Conekta::Error](docs/Error.md)
 - [Conekta::EventResponse](docs/EventResponse.md)
 - [Conekta::EventsResendResponse](docs/EventsResendResponse.md)
 - [Conekta::FiscalEntityAddress](docs/FiscalEntityAddress.md)
 - [Conekta::GetApiKeysResponse](docs/GetApiKeysResponse.md)
 - [Conekta::GetChargesResponse](docs/GetChargesResponse.md)
 - [Conekta::GetCompaniesResponse](docs/GetCompaniesResponse.md)
 - [Conekta::GetCustomerPaymentMethodDataResponse](docs/GetCustomerPaymentMethodDataResponse.md)
 - [Conekta::GetEventsResponse](docs/GetEventsResponse.md)
 - [Conekta::GetOrderDiscountLinesResponse](docs/GetOrderDiscountLinesResponse.md)
 - [Conekta::GetOrdersResponse](docs/GetOrdersResponse.md)
 - [Conekta::GetPaymentMethodResponse](docs/GetPaymentMethodResponse.md)
 - [Conekta::GetPlansResponse](docs/GetPlansResponse.md)
 - [Conekta::GetTransactionsResponse](docs/GetTransactionsResponse.md)
 - [Conekta::GetTransfersResponse](docs/GetTransfersResponse.md)
 - [Conekta::GetWebhookKeysResponse](docs/GetWebhookKeysResponse.md)
 - [Conekta::GetWebhooksResponse](docs/GetWebhooksResponse.md)
 - [Conekta::LogResponse](docs/LogResponse.md)
 - [Conekta::LogsResponse](docs/LogsResponse.md)
 - [Conekta::LogsResponseData](docs/LogsResponseData.md)
 - [Conekta::OrderCaptureRequest](docs/OrderCaptureRequest.md)
 - [Conekta::OrderCustomerInfoResponse](docs/OrderCustomerInfoResponse.md)
 - [Conekta::OrderDiscountLinesRequest](docs/OrderDiscountLinesRequest.md)
 - [Conekta::OrderFiscalEntityAddressResponse](docs/OrderFiscalEntityAddressResponse.md)
 - [Conekta::OrderFiscalEntityRequest](docs/OrderFiscalEntityRequest.md)
 - [Conekta::OrderFiscalEntityResponse](docs/OrderFiscalEntityResponse.md)
 - [Conekta::OrderNextActionResponse](docs/OrderNextActionResponse.md)
 - [Conekta::OrderNextActionResponseRedirectToUrl](docs/OrderNextActionResponseRedirectToUrl.md)
 - [Conekta::OrderRefundRequest](docs/OrderRefundRequest.md)
 - [Conekta::OrderRequest](docs/OrderRequest.md)
 - [Conekta::OrderRequestCustomerInfo](docs/OrderRequestCustomerInfo.md)
 - [Conekta::OrderResponse](docs/OrderResponse.md)
 - [Conekta::OrderResponseCharges](docs/OrderResponseCharges.md)
 - [Conekta::OrderResponseCheckout](docs/OrderResponseCheckout.md)
 - [Conekta::OrderResponseCustomerInfo](docs/OrderResponseCustomerInfo.md)
 - [Conekta::OrderResponseDiscountLines](docs/OrderResponseDiscountLines.md)
 - [Conekta::OrderResponseProducts](docs/OrderResponseProducts.md)
 - [Conekta::OrderResponseShippingContact](docs/OrderResponseShippingContact.md)
 - [Conekta::OrderTaxRequest](docs/OrderTaxRequest.md)
 - [Conekta::OrderUpdateFiscalEntityRequest](docs/OrderUpdateFiscalEntityRequest.md)
 - [Conekta::OrderUpdateRequest](docs/OrderUpdateRequest.md)
 - [Conekta::OrderUpdateRequestCustomerInfo](docs/OrderUpdateRequestCustomerInfo.md)
 - [Conekta::OrdersResponse](docs/OrdersResponse.md)
 - [Conekta::Page](docs/Page.md)
 - [Conekta::Pagination](docs/Pagination.md)
 - [Conekta::PaymentMethod](docs/PaymentMethod.md)
 - [Conekta::PaymentMethodBankTransfer](docs/PaymentMethodBankTransfer.md)
 - [Conekta::PaymentMethodCard](docs/PaymentMethodCard.md)
 - [Conekta::PaymentMethodCardRequest](docs/PaymentMethodCardRequest.md)
 - [Conekta::PaymentMethodCardResponse](docs/PaymentMethodCardResponse.md)
 - [Conekta::PaymentMethodCash](docs/PaymentMethodCash.md)
 - [Conekta::PaymentMethodCashRequest](docs/PaymentMethodCashRequest.md)
 - [Conekta::PaymentMethodCashResponse](docs/PaymentMethodCashResponse.md)
 - [Conekta::PaymentMethodResponse](docs/PaymentMethodResponse.md)
 - [Conekta::PaymentMethodSpeiRecurrent](docs/PaymentMethodSpeiRecurrent.md)
 - [Conekta::PaymentMethodSpeiRequest](docs/PaymentMethodSpeiRequest.md)
 - [Conekta::PlanRequest](docs/PlanRequest.md)
 - [Conekta::PlanResponse](docs/PlanResponse.md)
 - [Conekta::PlanUpdateRequest](docs/PlanUpdateRequest.md)
 - [Conekta::Product](docs/Product.md)
 - [Conekta::ProductDataResponse](docs/ProductDataResponse.md)
 - [Conekta::ProductOrderResponse](docs/ProductOrderResponse.md)
 - [Conekta::RiskRulesData](docs/RiskRulesData.md)
 - [Conekta::RiskRulesList](docs/RiskRulesList.md)
 - [Conekta::ShippingOrderResponse](docs/ShippingOrderResponse.md)
 - [Conekta::ShippingRequest](docs/ShippingRequest.md)
 - [Conekta::SmsCheckoutRequest](docs/SmsCheckoutRequest.md)
 - [Conekta::SubscriptionEventsResponse](docs/SubscriptionEventsResponse.md)
 - [Conekta::SubscriptionRequest](docs/SubscriptionRequest.md)
 - [Conekta::SubscriptionResponse](docs/SubscriptionResponse.md)
 - [Conekta::SubscriptionUpdateRequest](docs/SubscriptionUpdateRequest.md)
 - [Conekta::Token](docs/Token.md)
 - [Conekta::TokenCard](docs/TokenCard.md)
 - [Conekta::TokenCheckout](docs/TokenCheckout.md)
 - [Conekta::TokenResponse](docs/TokenResponse.md)
 - [Conekta::TokenResponseCheckout](docs/TokenResponseCheckout.md)
 - [Conekta::TransactionResponse](docs/TransactionResponse.md)
 - [Conekta::TransferDestinationResponse](docs/TransferDestinationResponse.md)
 - [Conekta::TransferMethodResponse](docs/TransferMethodResponse.md)
 - [Conekta::TransferResponse](docs/TransferResponse.md)
 - [Conekta::TransfersResponse](docs/TransfersResponse.md)
 - [Conekta::UpdateCustomer](docs/UpdateCustomer.md)
 - [Conekta::UpdateCustomerAntifraudInfo](docs/UpdateCustomerAntifraudInfo.md)
 - [Conekta::UpdateCustomerFiscalEntitiesResponse](docs/UpdateCustomerFiscalEntitiesResponse.md)
 - [Conekta::UpdateCustomerPaymentMethodsResponse](docs/UpdateCustomerPaymentMethodsResponse.md)
 - [Conekta::UpdateOrderDiscountLinesRequest](docs/UpdateOrderDiscountLinesRequest.md)
 - [Conekta::UpdateOrderTaxRequest](docs/UpdateOrderTaxRequest.md)
 - [Conekta::UpdateOrderTaxResponse](docs/UpdateOrderTaxResponse.md)
 - [Conekta::UpdatePaymentMethods](docs/UpdatePaymentMethods.md)
 - [Conekta::UpdateProduct](docs/UpdateProduct.md)
 - [Conekta::WebhookKeyCreateResponse](docs/WebhookKeyCreateResponse.md)
 - [Conekta::WebhookKeyDeleteResponse](docs/WebhookKeyDeleteResponse.md)
 - [Conekta::WebhookKeyRequest](docs/WebhookKeyRequest.md)
 - [Conekta::WebhookKeyResponse](docs/WebhookKeyResponse.md)
 - [Conekta::WebhookKeyUpdateRequest](docs/WebhookKeyUpdateRequest.md)
 - [Conekta::WebhookLog](docs/WebhookLog.md)
 - [Conekta::WebhookRequest](docs/WebhookRequest.md)
 - [Conekta::WebhookResponse](docs/WebhookResponse.md)
 - [Conekta::WebhookUpdateRequest](docs/WebhookUpdateRequest.md)
 - [Conekta::WhitelistlistRuleResponse](docs/WhitelistlistRuleResponse.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### bearerAuth

- **Type**: Bearer authentication

