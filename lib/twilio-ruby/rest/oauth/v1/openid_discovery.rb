##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Oauth
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class Oauth < OauthBase
            class V1 < Version
                class OpenidDiscoveryList < ListResource
                    ##
                    # Initialize the OpenidDiscoveryList
                    # @param [Version] version Version that contains the resource
                    # @return [OpenidDiscoveryList] OpenidDiscoveryList
                    def initialize(version)
                        super(version)
                        # Path Solution
                        @solution = {  }
                        
                        
                    end
                


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Oauth.V1.OpenidDiscoveryList>'
                    end
                end


                class OpenidDiscoveryContext < InstanceContext
                    ##
                    # Initialize the OpenidDiscoveryContext
                    # @param [Version] version Version that contains the resource
                    # @return [OpenidDiscoveryContext] OpenidDiscoveryContext
                    def initialize(version)
                        super(version)

                        # Path Solution
                        @solution = {  }
                        @uri = "/.well-known/openid-configuration"

                        
                    end
                    ##
                    # Fetch the OpenidDiscoveryInstance
                    # @return [OpenidDiscoveryInstance] Fetched OpenidDiscoveryInstance
                    def fetch

                        payload = @version.fetch('GET', @uri)
                        OpenidDiscoveryInstance.new(
                            @version,
                            payload,
                        )
                    end


                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Oauth.V1.OpenidDiscoveryContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Oauth.V1.OpenidDiscoveryContext #{context}>"
                    end
                end

                class OpenidDiscoveryPage < Page
                    ##
                    # Initialize the OpenidDiscoveryPage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [OpenidDiscoveryPage] OpenidDiscoveryPage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of OpenidDiscoveryInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [OpenidDiscoveryInstance] OpenidDiscoveryInstance
                    def get_instance(payload)
                        OpenidDiscoveryInstance.new(@version, payload)
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Oauth.V1.OpenidDiscoveryPage>'
                    end
                end
                class OpenidDiscoveryInstance < InstanceResource
                    ##
                    # Initialize the OpenidDiscoveryInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this OpenidDiscovery
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [OpenidDiscoveryInstance] OpenidDiscoveryInstance
                    def initialize(version, payload )
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'issuer' => payload['issuer'],
                            'authorization_endpoint' => payload['authorization_endpoint'],
                            'device_authorization_endpoint' => payload['device_authorization_endpoint'],
                            'token_endpoint' => payload['token_endpoint'],
                            'userinfo_endpoint' => payload['userinfo_endpoint'],
                            'revocation_endpoint' => payload['revocation_endpoint'],
                            'jwk_uri' => payload['jwk_uri'],
                            'response_type_supported' => payload['response_type_supported'],
                            'subject_type_supported' => payload['subject_type_supported'],
                            'id_token_signing_alg_values_supported' => payload['id_token_signing_alg_values_supported'],
                            'scopes_supported' => payload['scopes_supported'],
                            'claims_supported' => payload['claims_supported'],
                            'url' => payload['url'],
                        }

                        # Context
                        @instance_context = nil
                        @params = {  }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [OpenidDiscoveryContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = OpenidDiscoveryContext.new(@version )
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] The URL of the party that will create the token and sign it with its private key.
                    def issuer
                        @properties['issuer']
                    end
                    
                    ##
                    # @return [String] The endpoint that validates all authorization requests.
                    def authorization_endpoint
                        @properties['authorization_endpoint']
                    end
                    
                    ##
                    # @return [String] The endpoint that validates all device code related authorization requests.
                    def device_authorization_endpoint
                        @properties['device_authorization_endpoint']
                    end
                    
                    ##
                    # @return [String] The URL of the token endpoint. After a client has received an authorization code, that code is presented to the token endpoint and exchanged for an identity token, an access token, and a refresh token.
                    def token_endpoint
                        @properties['token_endpoint']
                    end
                    
                    ##
                    # @return [String] The URL of the user info endpoint, which returns user profile information to a client. Keep in mind that the user info endpoint returns only the information that has been requested.
                    def userinfo_endpoint
                        @properties['userinfo_endpoint']
                    end
                    
                    ##
                    # @return [String] The endpoint used to revoke access or refresh tokens issued by the authorization server.
                    def revocation_endpoint
                        @properties['revocation_endpoint']
                    end
                    
                    ##
                    # @return [String] The URL of your JSON Web Key Set. This set is a collection of JSON Web Keys, a standard method for representing cryptographic keys in a JSON structure.
                    def jwk_uri
                        @properties['jwk_uri']
                    end
                    
                    ##
                    # @return [Array<String>] A collection of response type supported by authorization server.
                    def response_type_supported
                        @properties['response_type_supported']
                    end
                    
                    ##
                    # @return [Array<String>] A collection of subject by authorization server.
                    def subject_type_supported
                        @properties['subject_type_supported']
                    end
                    
                    ##
                    # @return [Array<String>] A collection of JWS signing algorithms supported by authorization server to sign identity token.
                    def id_token_signing_alg_values_supported
                        @properties['id_token_signing_alg_values_supported']
                    end
                    
                    ##
                    # @return [Array<String>] A collection of scopes supported by authorization server for identity token
                    def scopes_supported
                        @properties['scopes_supported']
                    end
                    
                    ##
                    # @return [Array<String>] A collection of claims supported by authorization server for identity token
                    def claims_supported
                        @properties['claims_supported']
                    end
                    
                    ##
                    # @return [String] 
                    def url
                        @properties['url']
                    end
                    
                    ##
                    # Fetch the OpenidDiscoveryInstance
                    # @return [OpenidDiscoveryInstance] Fetched OpenidDiscoveryInstance
                    def fetch

                        context.fetch
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Oauth.V1.OpenidDiscoveryInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Oauth.V1.OpenidDiscoveryInstance #{values}>"
                    end
                end

            end
        end
    end
end