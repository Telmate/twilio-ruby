##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Serverless
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class Serverless < ServerlessBase
            class V1 < Version
                class ServiceContext < InstanceContext
                class EnvironmentContext < InstanceContext

                     class VariableList < ListResource
                    ##
                    # Initialize the VariableList
                    # @param [Version] version Version that contains the resource
                    # @return [VariableList] VariableList
                    def initialize(version, service_sid: nil, environment_sid: nil)
                        super(version)
                        # Path Solution
                        @solution = { service_sid: service_sid, environment_sid: environment_sid }
                        @uri = "/Services/#{@solution[:service_sid]}/Environments/#{@solution[:environment_sid]}/Variables"
                        
                    end
                    ##
                    # Create the VariableInstance
                    # @param [String] key A string by which the Variable resource can be referenced. It can be a maximum of 128 characters.
                    # @param [String] value A string that contains the actual value of the Variable. It can be a maximum of 450 bytes in size.
                    # @return [VariableInstance] Created VariableInstance
                    def create(
                        key: nil, 
                        value: nil
                    )

                        data = Twilio::Values.of({
                            'Key' => key,
                            'Value' => value,
                        })

                        payload = @version.create('POST', @uri, data: data)
                        VariableInstance.new(
                            @version,
                            payload,
                            service_sid: @solution[:service_sid],
                            environment_sid: @solution[:environment_sid],
                        )
                    end

                
                    ##
                    # Lists VariableInstance records from the API as a list.
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
                    # When passed a block, yields VariableInstance records from the API.
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
                    # Retrieve a single page of VariableInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] page_token PageToken provided by the API
                    # @param [Integer] page_number Page Number, this value is simply for client state
                    # @param [Integer] page_size Number of records to return, defaults to 50
                    # @return [Page] Page of VariableInstance
                    def page(page_token: :unset, page_number: :unset, page_size: :unset)
                        params = Twilio::Values.of({
                            
                            'PageToken' => page_token,
                            'Page' => page_number,
                            'PageSize' => page_size,
                        })

                        response = @version.page('GET', @uri, params: params)

                        VariablePage.new(@version, response, @solution)
                    end

                    ##
                    # Retrieve a single page of VariableInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] target_url API-generated URL for the requested results page
                    # @return [Page] Page of VariableInstance
                    def get_page(target_url)
                        response = @version.domain.request(
                            'GET',
                            target_url
                        )
                    VariablePage.new(@version, response, @solution)
                    end
                    


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Serverless.V1.VariableList>'
                    end
                end


                ##
                #PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
                class VariableContext < InstanceContext
                    ##
                    # Initialize the VariableContext
                    # @param [Version] version Version that contains the resource
                    # @param [String] service_sid The SID of the Service to update the Variable resource under.
                    # @param [String] environment_sid The SID of the Environment with the Variable resource to update.
                    # @param [String] sid The SID of the Variable resource to update.
                    # @return [VariableContext] VariableContext
                    def initialize(version, service_sid, environment_sid, sid)
                        super(version)

                        # Path Solution
                        @solution = { service_sid: service_sid, environment_sid: environment_sid, sid: sid,  }
                        @uri = "/Services/#{@solution[:service_sid]}/Environments/#{@solution[:environment_sid]}/Variables/#{@solution[:sid]}"

                        
                    end
                    ##
                    # Delete the VariableInstance
                    # @return [Boolean] True if delete succeeds, false otherwise
                    def delete

                        @version.delete('DELETE', @uri)
                    end

                    ##
                    # Fetch the VariableInstance
                    # @return [VariableInstance] Fetched VariableInstance
                    def fetch

                        payload = @version.fetch('GET', @uri)
                        VariableInstance.new(
                            @version,
                            payload,
                            service_sid: @solution[:service_sid],
                            environment_sid: @solution[:environment_sid],
                            sid: @solution[:sid],
                        )
                    end

                    ##
                    # Update the VariableInstance
                    # @param [String] key A string by which the Variable resource can be referenced. It can be a maximum of 128 characters.
                    # @param [String] value A string that contains the actual value of the Variable. It can be a maximum of 450 bytes in size.
                    # @return [VariableInstance] Updated VariableInstance
                    def update(
                        key: :unset, 
                        value: :unset
                    )

                        data = Twilio::Values.of({
                            'Key' => key,
                            'Value' => value,
                        })

                        payload = @version.update('POST', @uri, data: data)
                        VariableInstance.new(
                            @version,
                            payload,
                            service_sid: @solution[:service_sid],
                            environment_sid: @solution[:environment_sid],
                            sid: @solution[:sid],
                        )
                    end


                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Serverless.V1.VariableContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Serverless.V1.VariableContext #{context}>"
                    end
                end

                class VariablePage < Page
                    ##
                    # Initialize the VariablePage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [VariablePage] VariablePage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of VariableInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [VariableInstance] VariableInstance
                    def get_instance(payload)
                        VariableInstance.new(@version, payload, service_sid: @solution[:service_sid], environment_sid: @solution[:environment_sid])
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Serverless.V1.VariablePage>'
                    end
                end
                class VariableInstance < InstanceResource
                    ##
                    # Initialize the VariableInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this Variable
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [VariableInstance] VariableInstance
                    def initialize(version, payload , service_sid: nil, environment_sid: nil, sid: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'sid' => payload['sid'],
                            'account_sid' => payload['account_sid'],
                            'service_sid' => payload['service_sid'],
                            'environment_sid' => payload['environment_sid'],
                            'key' => payload['key'],
                            'value' => payload['value'],
                            'date_created' => Twilio.deserialize_iso8601_datetime(payload['date_created']),
                            'date_updated' => Twilio.deserialize_iso8601_datetime(payload['date_updated']),
                            'url' => payload['url'],
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'service_sid' => service_sid  || @properties['service_sid']  ,'environment_sid' => environment_sid  || @properties['environment_sid']  ,'sid' => sid  || @properties['sid']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [VariableContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = VariableContext.new(@version , @params['service_sid'], @params['environment_sid'], @params['sid'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] The unique string that we created to identify the Variable resource.
                    def sid
                        @properties['sid']
                    end
                    
                    ##
                    # @return [String] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Variable resource.
                    def account_sid
                        @properties['account_sid']
                    end
                    
                    ##
                    # @return [String] The SID of the Service that the Variable resource is associated with.
                    def service_sid
                        @properties['service_sid']
                    end
                    
                    ##
                    # @return [String] The SID of the Environment in which the Variable exists.
                    def environment_sid
                        @properties['environment_sid']
                    end
                    
                    ##
                    # @return [String] A string by which the Variable resource can be referenced.
                    def key
                        @properties['key']
                    end
                    
                    ##
                    # @return [String] A string that contains the actual value of the Variable.
                    def value
                        @properties['value']
                    end
                    
                    ##
                    # @return [Time] The date and time in GMT when the Variable resource was created specified in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format.
                    def date_created
                        @properties['date_created']
                    end
                    
                    ##
                    # @return [Time] The date and time in GMT when the Variable resource was last updated specified in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format.
                    def date_updated
                        @properties['date_updated']
                    end
                    
                    ##
                    # @return [String] The absolute URL of the Variable resource.
                    def url
                        @properties['url']
                    end
                    
                    ##
                    # Delete the VariableInstance
                    # @return [Boolean] True if delete succeeds, false otherwise
                    def delete

                        context.delete
                    end

                    ##
                    # Fetch the VariableInstance
                    # @return [VariableInstance] Fetched VariableInstance
                    def fetch

                        context.fetch
                    end

                    ##
                    # Update the VariableInstance
                    # @param [String] key A string by which the Variable resource can be referenced. It can be a maximum of 128 characters.
                    # @param [String] value A string that contains the actual value of the Variable. It can be a maximum of 450 bytes in size.
                    # @return [VariableInstance] Updated VariableInstance
                    def update(
                        key: :unset, 
                        value: :unset
                    )

                        context.update(
                            key: key, 
                            value: value, 
                        )
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Serverless.V1.VariableInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Serverless.V1.VariableInstance #{values}>"
                    end
                end

             end
             end
            end
        end
    end
end


