##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Conversations
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class Conversations < ConversationsBase
            class V1 < Version
                class AddressConfigurationList < ListResource
                    ##
                    # Initialize the AddressConfigurationList
                    # @param [Version] version Version that contains the resource
                    # @return [AddressConfigurationList] AddressConfigurationList
                    def initialize(version)
                        super(version)
                        # Path Solution
                        @solution = {  }
                        @uri = "/Configuration/Addresses"
                        
                    end
                    ##
                    # Create the AddressConfigurationInstance
                    # @param [Type] type 
                    # @param [String] address The unique address to be configured. The address can be a whatsapp address or phone number
                    # @param [String] friendly_name The human-readable name of this configuration, limited to 256 characters. Optional.
                    # @param [Boolean] auto_creation_enabled Enable/Disable auto-creating conversations for messages to this address
                    # @param [AutoCreationType] auto_creation_type 
                    # @param [String] auto_creation_conversation_service_sid Conversation Service for the auto-created conversation. If not set, the conversation is created in the default service.
                    # @param [String] auto_creation_webhook_url For type `webhook`, the url for the webhook request.
                    # @param [Method] auto_creation_webhook_method 
                    # @param [Array[String]] auto_creation_webhook_filters The list of events, firing webhook event for this Conversation. Values can be any of the following: `onMessageAdded`, `onMessageUpdated`, `onMessageRemoved`, `onConversationUpdated`, `onConversationStateUpdated`, `onConversationRemoved`, `onParticipantAdded`, `onParticipantUpdated`, `onParticipantRemoved`, `onDeliveryUpdated`
                    # @param [String] auto_creation_studio_flow_sid For type `studio`, the studio flow SID where the webhook should be sent to.
                    # @param [String] auto_creation_studio_retry_count For type `studio`, number of times to retry the webhook request
                    # @return [AddressConfigurationInstance] Created AddressConfigurationInstance
                    def create(
                        type: nil, 
                        address: nil, 
                        friendly_name: :unset, 
                        auto_creation_enabled: :unset, 
                        auto_creation_type: :unset, 
                        auto_creation_conversation_service_sid: :unset, 
                        auto_creation_webhook_url: :unset, 
                        auto_creation_webhook_method: :unset, 
                        auto_creation_webhook_filters: :unset, 
                        auto_creation_studio_flow_sid: :unset, 
                        auto_creation_studio_retry_count: :unset
                    )

                        data = Twilio::Values.of({
                            'Type' => type,
                            'Address' => address,
                            'FriendlyName' => friendly_name,
                            'AutoCreation.Enabled' => auto_creation_enabled,
                            'AutoCreation.Type' => auto_creation_type,
                            'AutoCreation.ConversationServiceSid' => auto_creation_conversation_service_sid,
                            'AutoCreation.WebhookUrl' => auto_creation_webhook_url,
                            'AutoCreation.WebhookMethod' => auto_creation_webhook_method,
                            'AutoCreation.WebhookFilters' => Twilio.serialize_list(auto_creation_webhook_filters) { |e| e },
                            'AutoCreation.StudioFlowSid' => auto_creation_studio_flow_sid,
                            'AutoCreation.StudioRetryCount' => auto_creation_studio_retry_count,
                        })

                        payload = @version.create('POST', @uri, data: data)
                        AddressConfigurationInstance.new(
                            @version,
                            payload,
                        )
                    end

                
                    ##
                    # Lists AddressConfigurationInstance records from the API as a list.
                    # Unlike stream(), this operation is eager and will load `limit` records into
                    # memory before returning.
                    # @param [String] type Filter the address configurations by its type. This value can be one of: `whatsapp`, `sms`.
                    # @param [Integer] limit Upper limit for the number of records to return. stream()
                    #    guarantees to never return more than limit.  Default is no limit
                    # @param [Integer] page_size Number of records to fetch per request, when
                    #    not set will use the default value of 50 records.  If no page_size is defined
                    #    but a limit is defined, stream() will attempt to read the limit with the most
                    #    efficient page size, i.e. min(limit, 1000)
                    # @return [Array] Array of up to limit results
                    def list(type: :unset, limit: nil, page_size: nil)
                        self.stream(
                            type: type,
                            limit: limit,
                            page_size: page_size
                        ).entries
                    end

                    ##
                    # Streams Instance records from the API as an Enumerable.
                    # This operation lazily loads records as efficiently as possible until the limit
                    # is reached.
                    # @param [String] type Filter the address configurations by its type. This value can be one of: `whatsapp`, `sms`.
                    # @param [Integer] limit Upper limit for the number of records to return. stream()
                    #    guarantees to never return more than limit.  Default is no limit
                    # @param [Integer] page_size Number of records to fetch per request, when
                    #    not set will use the default value of 50 records.  If no page_size is defined
                    #    but a limit is defined, stream() will attempt to read the limit with the most
                    #    efficient page size, i.e. min(limit, 1000)
                    # @return [Enumerable] Enumerable that will yield up to limit results
                    def stream(type: :unset, limit: nil, page_size: nil)
                        limits = @version.read_limits(limit, page_size)

                        page = self.page(
                            type: type,
                            page_size: limits[:page_size], )

                        @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
                    end

                    ##
                    # When passed a block, yields AddressConfigurationInstance records from the API.
                    # This operation lazily loads records as efficiently as possible until the limit
                    # is reached.
                    def each
                        limits = @version.read_limits

                        page = self.page(page_size: limits[:page_size], )

                        @version.stream(page,
                            limit: limits[:limit],
                            page_limit: limits[:page_limit]).each {|x| yield x}
                    end

                    ##
                    # Retrieve a single page of AddressConfigurationInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] type Filter the address configurations by its type. This value can be one of: `whatsapp`, `sms`.
                    # @param [String] page_token PageToken provided by the API
                    # @param [Integer] page_number Page Number, this value is simply for client state
                    # @param [Integer] page_size Number of records to return, defaults to 50
                    # @return [Page] Page of AddressConfigurationInstance
                    def page(type: :unset, page_token: :unset, page_number: :unset, page_size: :unset)
                        params = Twilio::Values.of({
                            
                            'Type' => type,
                            
                            'PageToken' => page_token,
                            'Page' => page_number,
                            'PageSize' => page_size,
                        })

                        response = @version.page('GET', @uri, params: params)

                        AddressConfigurationPage.new(@version, response, @solution)
                    end

                    ##
                    # Retrieve a single page of AddressConfigurationInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] target_url API-generated URL for the requested results page
                    # @return [Page] Page of AddressConfigurationInstance
                    def get_page(target_url)
                        response = @version.domain.request(
                            'GET',
                            target_url
                        )
                    AddressConfigurationPage.new(@version, response, @solution)
                    end
                    


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Conversations.V1.AddressConfigurationList>'
                    end
                end


                class AddressConfigurationContext < InstanceContext
                    ##
                    # Initialize the AddressConfigurationContext
                    # @param [Version] version Version that contains the resource
                    # @param [String] sid The SID of the Address Configuration resource. This value can be either the `sid` or the `address` of the configuration
                    # @return [AddressConfigurationContext] AddressConfigurationContext
                    def initialize(version, sid)
                        super(version)

                        # Path Solution
                        @solution = { sid: sid,  }
                        @uri = "/Configuration/Addresses/#{@solution[:sid]}"

                        
                    end
                    ##
                    # Delete the AddressConfigurationInstance
                    # @return [Boolean] True if delete succeeds, false otherwise
                    def delete

                        @version.delete('DELETE', @uri)
                    end

                    ##
                    # Fetch the AddressConfigurationInstance
                    # @return [AddressConfigurationInstance] Fetched AddressConfigurationInstance
                    def fetch

                        payload = @version.fetch('GET', @uri)
                        AddressConfigurationInstance.new(
                            @version,
                            payload,
                            sid: @solution[:sid],
                        )
                    end

                    ##
                    # Update the AddressConfigurationInstance
                    # @param [String] friendly_name The human-readable name of this configuration, limited to 256 characters. Optional.
                    # @param [Boolean] auto_creation_enabled Enable/Disable auto-creating conversations for messages to this address
                    # @param [AutoCreationType] auto_creation_type 
                    # @param [String] auto_creation_conversation_service_sid Conversation Service for the auto-created conversation. If not set, the conversation is created in the default service.
                    # @param [String] auto_creation_webhook_url For type `webhook`, the url for the webhook request.
                    # @param [Method] auto_creation_webhook_method 
                    # @param [Array[String]] auto_creation_webhook_filters The list of events, firing webhook event for this Conversation. Values can be any of the following: `onMessageAdded`, `onMessageUpdated`, `onMessageRemoved`, `onConversationUpdated`, `onConversationStateUpdated`, `onConversationRemoved`, `onParticipantAdded`, `onParticipantUpdated`, `onParticipantRemoved`, `onDeliveryUpdated`
                    # @param [String] auto_creation_studio_flow_sid For type `studio`, the studio flow SID where the webhook should be sent to.
                    # @param [String] auto_creation_studio_retry_count For type `studio`, number of times to retry the webhook request
                    # @return [AddressConfigurationInstance] Updated AddressConfigurationInstance
                    def update(
                        friendly_name: :unset, 
                        auto_creation_enabled: :unset, 
                        auto_creation_type: :unset, 
                        auto_creation_conversation_service_sid: :unset, 
                        auto_creation_webhook_url: :unset, 
                        auto_creation_webhook_method: :unset, 
                        auto_creation_webhook_filters: :unset, 
                        auto_creation_studio_flow_sid: :unset, 
                        auto_creation_studio_retry_count: :unset
                    )

                        data = Twilio::Values.of({
                            'FriendlyName' => friendly_name,
                            'AutoCreation.Enabled' => auto_creation_enabled,
                            'AutoCreation.Type' => auto_creation_type,
                            'AutoCreation.ConversationServiceSid' => auto_creation_conversation_service_sid,
                            'AutoCreation.WebhookUrl' => auto_creation_webhook_url,
                            'AutoCreation.WebhookMethod' => auto_creation_webhook_method,
                            'AutoCreation.WebhookFilters' => Twilio.serialize_list(auto_creation_webhook_filters) { |e| e },
                            'AutoCreation.StudioFlowSid' => auto_creation_studio_flow_sid,
                            'AutoCreation.StudioRetryCount' => auto_creation_studio_retry_count,
                        })

                        payload = @version.update('POST', @uri, data: data)
                        AddressConfigurationInstance.new(
                            @version,
                            payload,
                            sid: @solution[:sid],
                        )
                    end


                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Conversations.V1.AddressConfigurationContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Conversations.V1.AddressConfigurationContext #{context}>"
                    end
                end

                class AddressConfigurationPage < Page
                    ##
                    # Initialize the AddressConfigurationPage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [AddressConfigurationPage] AddressConfigurationPage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of AddressConfigurationInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [AddressConfigurationInstance] AddressConfigurationInstance
                    def get_instance(payload)
                        AddressConfigurationInstance.new(@version, payload)
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Conversations.V1.AddressConfigurationPage>'
                    end
                end
                class AddressConfigurationInstance < InstanceResource
                    ##
                    # Initialize the AddressConfigurationInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this AddressConfiguration
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [AddressConfigurationInstance] AddressConfigurationInstance
                    def initialize(version, payload , sid: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'sid' => payload['sid'],
                            'account_sid' => payload['account_sid'],
                            'type' => payload['type'],
                            'address' => payload['address'],
                            'friendly_name' => payload['friendly_name'],
                            'auto_creation' => payload['auto_creation'],
                            'date_created' => Twilio.deserialize_iso8601_datetime(payload['date_created']),
                            'date_updated' => Twilio.deserialize_iso8601_datetime(payload['date_updated']),
                            'url' => payload['url'],
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'sid' => sid  || @properties['sid']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [AddressConfigurationContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = AddressConfigurationContext.new(@version , @params['sid'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] A 34 character string that uniquely identifies this resource.
                    def sid
                        @properties['sid']
                    end
                    
                    ##
                    # @return [String] The unique ID of the [Account](https://www.twilio.com/docs/iam/api/account) the address belongs to
                    def account_sid
                        @properties['account_sid']
                    end
                    
                    ##
                    # @return [String] Type of Address, value can be `whatsapp` or `sms`.
                    def type
                        @properties['type']
                    end
                    
                    ##
                    # @return [String] The unique address to be configured. The address can be a whatsapp address or phone number
                    def address
                        @properties['address']
                    end
                    
                    ##
                    # @return [String] The human-readable name of this configuration, limited to 256 characters. Optional.
                    def friendly_name
                        @properties['friendly_name']
                    end
                    
                    ##
                    # @return [Hash] Auto Creation configuration for the address.
                    def auto_creation
                        @properties['auto_creation']
                    end
                    
                    ##
                    # @return [Time] The date that this resource was created.
                    def date_created
                        @properties['date_created']
                    end
                    
                    ##
                    # @return [Time] The date that this resource was last updated.
                    def date_updated
                        @properties['date_updated']
                    end
                    
                    ##
                    # @return [String] An absolute API resource URL for this address configuration.
                    def url
                        @properties['url']
                    end
                    
                    ##
                    # Delete the AddressConfigurationInstance
                    # @return [Boolean] True if delete succeeds, false otherwise
                    def delete

                        context.delete
                    end

                    ##
                    # Fetch the AddressConfigurationInstance
                    # @return [AddressConfigurationInstance] Fetched AddressConfigurationInstance
                    def fetch

                        context.fetch
                    end

                    ##
                    # Update the AddressConfigurationInstance
                    # @param [String] friendly_name The human-readable name of this configuration, limited to 256 characters. Optional.
                    # @param [Boolean] auto_creation_enabled Enable/Disable auto-creating conversations for messages to this address
                    # @param [AutoCreationType] auto_creation_type 
                    # @param [String] auto_creation_conversation_service_sid Conversation Service for the auto-created conversation. If not set, the conversation is created in the default service.
                    # @param [String] auto_creation_webhook_url For type `webhook`, the url for the webhook request.
                    # @param [Method] auto_creation_webhook_method 
                    # @param [Array[String]] auto_creation_webhook_filters The list of events, firing webhook event for this Conversation. Values can be any of the following: `onMessageAdded`, `onMessageUpdated`, `onMessageRemoved`, `onConversationUpdated`, `onConversationStateUpdated`, `onConversationRemoved`, `onParticipantAdded`, `onParticipantUpdated`, `onParticipantRemoved`, `onDeliveryUpdated`
                    # @param [String] auto_creation_studio_flow_sid For type `studio`, the studio flow SID where the webhook should be sent to.
                    # @param [String] auto_creation_studio_retry_count For type `studio`, number of times to retry the webhook request
                    # @return [AddressConfigurationInstance] Updated AddressConfigurationInstance
                    def update(
                        friendly_name: :unset, 
                        auto_creation_enabled: :unset, 
                        auto_creation_type: :unset, 
                        auto_creation_conversation_service_sid: :unset, 
                        auto_creation_webhook_url: :unset, 
                        auto_creation_webhook_method: :unset, 
                        auto_creation_webhook_filters: :unset, 
                        auto_creation_studio_flow_sid: :unset, 
                        auto_creation_studio_retry_count: :unset
                    )

                        context.update(
                            friendly_name: friendly_name, 
                            auto_creation_enabled: auto_creation_enabled, 
                            auto_creation_type: auto_creation_type, 
                            auto_creation_conversation_service_sid: auto_creation_conversation_service_sid, 
                            auto_creation_webhook_url: auto_creation_webhook_url, 
                            auto_creation_webhook_method: auto_creation_webhook_method, 
                            auto_creation_webhook_filters: auto_creation_webhook_filters, 
                            auto_creation_studio_flow_sid: auto_creation_studio_flow_sid, 
                            auto_creation_studio_retry_count: auto_creation_studio_retry_count, 
                        )
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Conversations.V1.AddressConfigurationInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Conversations.V1.AddressConfigurationInstance #{values}>"
                    end
                end

            end
        end
    end
end
