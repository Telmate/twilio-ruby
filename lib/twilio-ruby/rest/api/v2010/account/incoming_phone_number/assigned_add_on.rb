##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Api
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class Api < ApiBase
            class V2010 < Version
                class AccountContext < InstanceContext
                class IncomingPhoneNumberContext < InstanceContext

                     class AssignedAddOnList < ListResource
                    ##
                    # Initialize the AssignedAddOnList
                    # @param [Version] version Version that contains the resource
                    # @return [AssignedAddOnList] AssignedAddOnList
                    def initialize(version, account_sid: nil, resource_sid: nil)
                        super(version)
                        # Path Solution
                        @solution = { account_sid: account_sid, resource_sid: resource_sid }
                        @uri = "/Accounts/#{@solution[:account_sid]}/IncomingPhoneNumbers/#{@solution[:resource_sid]}/AssignedAddOns.json"
                        
                    end
                    ##
                    # Create the AssignedAddOnInstance
                    # @param [String] installed_add_on_sid The SID that identifies the Add-on installation.
                    # @return [AssignedAddOnInstance] Created AssignedAddOnInstance
                    def create(
                        installed_add_on_sid: nil
                    )

                        data = Twilio::Values.of({
                            'InstalledAddOnSid' => installed_add_on_sid,
                        })

                        payload = @version.create('POST', @uri, data: data)
                        AssignedAddOnInstance.new(
                            @version,
                            payload,
                            account_sid: @solution[:account_sid],
                            resource_sid: @solution[:resource_sid],
                        )
                    end

                
                    ##
                    # Lists AssignedAddOnInstance records from the API as a list.
                    # Unlike stream(), this operation is eager and will load `limit` records into
                    # memory before returning.
                    # @param [Integer] limit Upper limit for the number of records to return. stream()
                    #    guarantees to never return more than limit.  Default is no limit
                    # @param [Integer] page_size Number of records to fetch per request, when
                    #    not set will use the default value of 50 records.  If no page_size is defined
                    #    but a limit is defined, stream() will attempt to read the limit with the most
                    #    efficient page size, i.e. min(limit, 1000)
                    # @return [Array] Array of up to limit results
                    def list(limit: nil, page_size: nil)
                        self.stream(
                            limit: limit,
                            page_size: page_size
                        ).entries
                    end

                    ##
                    # Streams Instance records from the API as an Enumerable.
                    # This operation lazily loads records as efficiently as possible until the limit
                    # is reached.
                    # @param [Integer] limit Upper limit for the number of records to return. stream()
                    #    guarantees to never return more than limit.  Default is no limit
                    # @param [Integer] page_size Number of records to fetch per request, when
                    #    not set will use the default value of 50 records.  If no page_size is defined
                    #    but a limit is defined, stream() will attempt to read the limit with the most
                    #    efficient page size, i.e. min(limit, 1000)
                    # @return [Enumerable] Enumerable that will yield up to limit results
                    def stream(limit: nil, page_size: nil)
                        limits = @version.read_limits(limit, page_size)

                        page = self.page(
                            page_size: limits[:page_size], )

                        @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
                    end

                    ##
                    # When passed a block, yields AssignedAddOnInstance records from the API.
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
                    # Retrieve a single page of AssignedAddOnInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] page_token PageToken provided by the API
                    # @param [Integer] page_number Page Number, this value is simply for client state
                    # @param [Integer] page_size Number of records to return, defaults to 50
                    # @return [Page] Page of AssignedAddOnInstance
                    def page(page_token: :unset, page_number: :unset, page_size: :unset)
                        params = Twilio::Values.of({
                            
                            'PageToken' => page_token,
                            'Page' => page_number,
                            'PageSize' => page_size,
                        })

                        response = @version.page('GET', @uri, params: params)

                        AssignedAddOnPage.new(@version, response, @solution)
                    end

                    ##
                    # Retrieve a single page of AssignedAddOnInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] target_url API-generated URL for the requested results page
                    # @return [Page] Page of AssignedAddOnInstance
                    def get_page(target_url)
                        response = @version.domain.request(
                            'GET',
                            target_url
                        )
                    AssignedAddOnPage.new(@version, response, @solution)
                    end
                    


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Api.V2010.AssignedAddOnList>'
                    end
                end


                ##
                #PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
                class AssignedAddOnContext < InstanceContext
                    ##
                    # Initialize the AssignedAddOnContext
                    # @param [Version] version Version that contains the resource
                    # @param [String] account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the resource to fetch.
                    # @param [String] resource_sid The SID of the Phone Number to which the Add-on is assigned.
                    # @param [String] sid The Twilio-provided string that uniquely identifies the resource to fetch.
                    # @return [AssignedAddOnContext] AssignedAddOnContext
                    def initialize(version, account_sid, resource_sid, sid)
                        super(version)

                        # Path Solution
                        @solution = { account_sid: account_sid, resource_sid: resource_sid, sid: sid,  }
                        @uri = "/Accounts/#{@solution[:account_sid]}/IncomingPhoneNumbers/#{@solution[:resource_sid]}/AssignedAddOns/#{@solution[:sid]}.json"

                        # Dependents
                        @extensions = nil
                    end
                    ##
                    # Delete the AssignedAddOnInstance
                    # @return [Boolean] True if delete succeeds, false otherwise
                    def delete

                        @version.delete('DELETE', @uri)
                    end

                    ##
                    # Fetch the AssignedAddOnInstance
                    # @return [AssignedAddOnInstance] Fetched AssignedAddOnInstance
                    def fetch

                        payload = @version.fetch('GET', @uri)
                        AssignedAddOnInstance.new(
                            @version,
                            payload,
                            account_sid: @solution[:account_sid],
                            resource_sid: @solution[:resource_sid],
                            sid: @solution[:sid],
                        )
                    end

                    ##
                    # Access the extensions
                    # @return [AssignedAddOnExtensionList]
                    # @return [AssignedAddOnExtensionContext] if sid was passed.
                    def extensions(sid=:unset)

                        raise ArgumentError, 'sid cannot be nil' if sid.nil?

                        if sid != :unset
                            return AssignedAddOnExtensionContext.new(@version, @solution[:account_sid], @solution[:resource_sid], @solution[:sid],sid )
                        end

                        unless @extensions
                            @extensions = AssignedAddOnExtensionList.new(
                                @version,
                                account_sid: @solution[:account_sid],
                                resource_sid: @solution[:resource_sid],
                                assigned_add_on_sid: @solution[:sid]
                                
                                )
                        end

                     @extensions
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Api.V2010.AssignedAddOnContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Api.V2010.AssignedAddOnContext #{context}>"
                    end
                end

                class AssignedAddOnPage < Page
                    ##
                    # Initialize the AssignedAddOnPage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [AssignedAddOnPage] AssignedAddOnPage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of AssignedAddOnInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [AssignedAddOnInstance] AssignedAddOnInstance
                    def get_instance(payload)
                        AssignedAddOnInstance.new(@version, payload, account_sid: @solution[:account_sid], resource_sid: @solution[:resource_sid])
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Api.V2010.AssignedAddOnPage>'
                    end
                end
                class AssignedAddOnInstance < InstanceResource
                    ##
                    # Initialize the AssignedAddOnInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this AssignedAddOn
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [AssignedAddOnInstance] AssignedAddOnInstance
                    def initialize(version, payload , account_sid: nil, resource_sid: nil, sid: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'sid' => payload['sid'],
                            'account_sid' => payload['account_sid'],
                            'resource_sid' => payload['resource_sid'],
                            'friendly_name' => payload['friendly_name'],
                            'description' => payload['description'],
                            'configuration' => payload['configuration'],
                            'unique_name' => payload['unique_name'],
                            'date_created' => Twilio.deserialize_rfc2822(payload['date_created']),
                            'date_updated' => Twilio.deserialize_rfc2822(payload['date_updated']),
                            'uri' => payload['uri'],
                            'subresource_uris' => payload['subresource_uris'],
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'account_sid' => account_sid  ,'resource_sid' => resource_sid  || @properties['resource_sid']  ,'sid' => sid  || @properties['sid']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [AssignedAddOnContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = AssignedAddOnContext.new(@version , @params['account_sid'], @params['resource_sid'], @params['sid'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] The unique string that that we created to identify the resource.
                    def sid
                        @properties['sid']
                    end
                    
                    ##
                    # @return [String] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the resource.
                    def account_sid
                        @properties['account_sid']
                    end
                    
                    ##
                    # @return [String] The SID of the Phone Number to which the Add-on is assigned.
                    def resource_sid
                        @properties['resource_sid']
                    end
                    
                    ##
                    # @return [String] The string that you assigned to describe the resource.
                    def friendly_name
                        @properties['friendly_name']
                    end
                    
                    ##
                    # @return [String] A short description of the functionality that the Add-on provides.
                    def description
                        @properties['description']
                    end
                    
                    ##
                    # @return [Hash] A JSON string that represents the current configuration of this Add-on installation.
                    def configuration
                        @properties['configuration']
                    end
                    
                    ##
                    # @return [String] An application-defined string that uniquely identifies the resource. It can be used in place of the resource's `sid` in the URL to address the resource.
                    def unique_name
                        @properties['unique_name']
                    end
                    
                    ##
                    # @return [Time] The date and time in GMT that the resource was created specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
                    def date_created
                        @properties['date_created']
                    end
                    
                    ##
                    # @return [Time] The date and time in GMT that the resource was last updated specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
                    def date_updated
                        @properties['date_updated']
                    end
                    
                    ##
                    # @return [String] The URI of the resource, relative to `https://api.twilio.com`.
                    def uri
                        @properties['uri']
                    end
                    
                    ##
                    # @return [Hash] A list of related resources identified by their relative URIs.
                    def subresource_uris
                        @properties['subresource_uris']
                    end
                    
                    ##
                    # Delete the AssignedAddOnInstance
                    # @return [Boolean] True if delete succeeds, false otherwise
                    def delete

                        context.delete
                    end

                    ##
                    # Fetch the AssignedAddOnInstance
                    # @return [AssignedAddOnInstance] Fetched AssignedAddOnInstance
                    def fetch

                        context.fetch
                    end

                    ##
                    # Access the extensions
                    # @return [extensions] extensions
                    def extensions
                        context.extensions
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Api.V2010.AssignedAddOnInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Api.V2010.AssignedAddOnInstance #{values}>"
                    end
                end

             end
             end
            end
        end
    end
end


