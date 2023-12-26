=begin
#Conekta API

#Conekta sdk

The version of the OpenAPI document: 2.1.0
Contact: engineering@conekta.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

require 'cgi'

module Conekta
  class WebhooksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Webhook
    # What we do at Conekta translates into events. For example, an event of interest to us occurs at the time a payment is successfully processed. At that moment we will be interested in doing several things: Send an email to the buyer, generate an invoice, start the process of shipping the product, etc.
    # @param webhook_request [WebhookRequest] requested field for webhook
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @return [WebhookResponse]
    def create_webhook(webhook_request, opts = {})
      data, _status_code, _headers = create_webhook_with_http_info(webhook_request, opts)
      data
    end

    # Create Webhook
    # What we do at Conekta translates into events. For example, an event of interest to us occurs at the time a payment is successfully processed. At that moment we will be interested in doing several things: Send an email to the buyer, generate an invoice, start the process of shipping the product, etc.
    # @param webhook_request [WebhookRequest] requested field for webhook
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @return [Array<(WebhookResponse, Integer, Hash)>] WebhookResponse data, response status code and response headers
    def create_webhook_with_http_info(webhook_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.create_webhook ...'
      end
      # verify the required parameter 'webhook_request' is set
      if @api_client.config.client_side_validation && webhook_request.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_request' when calling WebhooksApi.create_webhook"
      end
      allowable_values = ["es", "en"]
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !allowable_values.include?(opts[:'accept_language'])
        fail ArgumentError, "invalid value for \"accept_language\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/webhooks'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.conekta-v2.1.0+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'Accept-Language'] = opts[:'accept_language'] if !opts[:'accept_language'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(webhook_request)

      # return_type
      return_type = opts[:debug_return_type] || 'WebhookResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WebhooksApi.create_webhook",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#create_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Webhook
    # @param id [String] Identifier of the resource
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @return [WebhookResponse]
    def delete_webhook(id, opts = {})
      data, _status_code, _headers = delete_webhook_with_http_info(id, opts)
      data
    end

    # Delete Webhook
    # @param id [String] Identifier of the resource
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @return [Array<(WebhookResponse, Integer, Hash)>] WebhookResponse data, response status code and response headers
    def delete_webhook_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.delete_webhook ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhooksApi.delete_webhook"
      end
      allowable_values = ["es", "en"]
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !allowable_values.include?(opts[:'accept_language'])
        fail ArgumentError, "invalid value for \"accept_language\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/webhooks/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.conekta-v2.1.0+json'])
      header_params[:'Accept-Language'] = opts[:'accept_language'] if !opts[:'accept_language'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WebhookResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WebhooksApi.delete_webhook",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#delete_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Webhook
    # @param id [String] Identifier of the resource
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @return [WebhookResponse]
    def get_webhook(id, opts = {})
      data, _status_code, _headers = get_webhook_with_http_info(id, opts)
      data
    end

    # Get Webhook
    # @param id [String] Identifier of the resource
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @return [Array<(WebhookResponse, Integer, Hash)>] WebhookResponse data, response status code and response headers
    def get_webhook_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.get_webhook ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhooksApi.get_webhook"
      end
      allowable_values = ["es", "en"]
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !allowable_values.include?(opts[:'accept_language'])
        fail ArgumentError, "invalid value for \"accept_language\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/webhooks/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.conekta-v2.1.0+json'])
      header_params[:'Accept-Language'] = opts[:'accept_language'] if !opts[:'accept_language'].nil?
      header_params[:'X-Child-Company-Id'] = opts[:'x_child_company_id'] if !opts[:'x_child_company_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WebhookResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WebhooksApi.get_webhook",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#get_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get List of Webhooks
    # Consume the list of webhooks you have, each environment supports 10 webhooks (For production and testing)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @option opts [Integer] :limit The numbers of items to return, the maximum value is 250 (default to 20)
    # @option opts [String] :search General order search, e.g. by mail, reference etc.
    # @option opts [String] :_next next page
    # @option opts [String] :previous previous page
    # @return [GetWebhooksResponse]
    def get_webhooks(opts = {})
      data, _status_code, _headers = get_webhooks_with_http_info(opts)
      data
    end

    # Get List of Webhooks
    # Consume the list of webhooks you have, each environment supports 10 webhooks (For production and testing)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @option opts [Integer] :limit The numbers of items to return, the maximum value is 250 (default to 20)
    # @option opts [String] :search General order search, e.g. by mail, reference etc.
    # @option opts [String] :_next next page
    # @option opts [String] :previous previous page
    # @return [Array<(GetWebhooksResponse, Integer, Hash)>] GetWebhooksResponse data, response status code and response headers
    def get_webhooks_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.get_webhooks ...'
      end
      allowable_values = ["es", "en"]
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !allowable_values.include?(opts[:'accept_language'])
        fail ArgumentError, "invalid value for \"accept_language\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 250
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling WebhooksApi.get_webhooks, must be smaller than or equal to 250.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling WebhooksApi.get_webhooks, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/webhooks'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?
      query_params[:'next'] = opts[:'_next'] if !opts[:'_next'].nil?
      query_params[:'previous'] = opts[:'previous'] if !opts[:'previous'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.conekta-v2.1.0+json'])
      header_params[:'Accept-Language'] = opts[:'accept_language'] if !opts[:'accept_language'].nil?
      header_params[:'X-Child-Company-Id'] = opts[:'x_child_company_id'] if !opts[:'x_child_company_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetWebhooksResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WebhooksApi.get_webhooks",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#get_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Test Webhook
    # Send a webhook.ping event
    # @param id [String] Identifier of the resource
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @return [WebhookResponse]
    def test_webhook(id, opts = {})
      data, _status_code, _headers = test_webhook_with_http_info(id, opts)
      data
    end

    # Test Webhook
    # Send a webhook.ping event
    # @param id [String] Identifier of the resource
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @return [Array<(WebhookResponse, Integer, Hash)>] WebhookResponse data, response status code and response headers
    def test_webhook_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.test_webhook ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhooksApi.test_webhook"
      end
      allowable_values = ["es", "en"]
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !allowable_values.include?(opts[:'accept_language'])
        fail ArgumentError, "invalid value for \"accept_language\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/webhooks/{id}/test'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.conekta-v2.1.0+json'])
      header_params[:'Accept-Language'] = opts[:'accept_language'] if !opts[:'accept_language'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WebhookResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WebhooksApi.test_webhook",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#test_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Webhook
    # updates an existing webhook
    # @param id [String] Identifier of the resource
    # @param webhook_update_request [WebhookUpdateRequest] requested fields in order to update a webhook
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @return [WebhookResponse]
    def update_webhook(id, webhook_update_request, opts = {})
      data, _status_code, _headers = update_webhook_with_http_info(id, webhook_update_request, opts)
      data
    end

    # Update Webhook
    # updates an existing webhook
    # @param id [String] Identifier of the resource
    # @param webhook_update_request [WebhookUpdateRequest] requested fields in order to update a webhook
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @return [Array<(WebhookResponse, Integer, Hash)>] WebhookResponse data, response status code and response headers
    def update_webhook_with_http_info(id, webhook_update_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.update_webhook ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhooksApi.update_webhook"
      end
      # verify the required parameter 'webhook_update_request' is set
      if @api_client.config.client_side_validation && webhook_update_request.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_update_request' when calling WebhooksApi.update_webhook"
      end
      allowable_values = ["es", "en"]
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !allowable_values.include?(opts[:'accept_language'])
        fail ArgumentError, "invalid value for \"accept_language\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/webhooks/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.conekta-v2.1.0+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'Accept-Language'] = opts[:'accept_language'] if !opts[:'accept_language'].nil?
      header_params[:'X-Child-Company-Id'] = opts[:'x_child_company_id'] if !opts[:'x_child_company_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(webhook_update_request)

      # return_type
      return_type = opts[:debug_return_type] || 'WebhookResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WebhooksApi.update_webhook",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#update_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
