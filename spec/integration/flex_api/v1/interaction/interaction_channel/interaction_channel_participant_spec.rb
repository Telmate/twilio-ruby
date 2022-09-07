##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'InteractionChannelParticipant' do
  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.flex_api.v1.interaction('KDXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                         .channels('UOXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                         .participants.create(type: 'supervisor', media_properties: {})
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'Type' => 'supervisor', 'MediaProperties' => Twilio.serialize_object({}), }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://flex-api.twilio.com/v1/Interactions/KDXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Channels/UOXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Participants',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "sid": "UTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa1",
          "channel_sid": "UOaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa1",
          "interaction_sid": "KDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "type": "customer",
          "url": "https://flex-api.twilio.com/v1/Interactions/KDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels/UOaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa1/Participants/UTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa1"
      }
      ]
    ))

    actual = @client.flex_api.v1.interaction('KDXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                .channels('UOXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                .participants.create(type: 'supervisor', media_properties: {})

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.flex_api.v1.interaction('KDXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                         .channels('UOXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                         .participants.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://flex-api.twilio.com/v1/Interactions/KDXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Channels/UOXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Participants',
    ))).to eq(true)
  end

  it "receives read responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "participants": [
              {
                  "sid": "UTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa1",
                  "channel_sid": "UOaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa1",
                  "interaction_sid": "KDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "type": "customer",
                  "url": "https://flex-api.twilio.com/v1/Interactions/KDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels/UOaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa1/Participants/UTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa1"
              },
              {
                  "sid": "UTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa2",
                  "channel_sid": "UOaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa1",
                  "interaction_sid": "KDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "type": "agent",
                  "url": "https://flex-api.twilio.com/v1/Interactions/KDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels/UOaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa1/Participants/UTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa2"
              }
          ],
          "meta": {
              "page": 0,
              "page_size": 50,
              "first_page_url": "https://flex-api.twilio.com/v1/Interactions/KDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels/UOaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa1/Participants?PageSize=50&Page=0",
              "previous_page_url": null,
              "url": "https://flex-api.twilio.com/v1/Interactions/KDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels/UOaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa1/Participants?PageSize=50&Page=0",
              "next_page_url": null,
              "key": "participants"
          }
      }
      ]
    ))

    actual = @client.flex_api.v1.interaction('KDXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                .channels('UOXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                .participants.list()

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.flex_api.v1.interaction('KDXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                         .channels('UOXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                         .participants('UOXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update(status: 'closed')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'Status' => 'closed', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://flex-api.twilio.com/v1/Interactions/KDXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Channels/UOXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Participants/UOXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
        data: values,
    ))).to eq(true)
  end

  it "receives update responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sid": "UTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa1",
          "channel_sid": "UOaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa1",
          "interaction_sid": "KDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "type": "agent",
          "url": "https://flex-api.twilio.com/v1/Interactions/KDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels/UOaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa1/Participants/UTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa1"
      }
      ]
    ))

    actual = @client.flex_api.v1.interaction('KDXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                .channels('UOXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                .participants('UOXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update(status: 'closed')

    expect(actual).to_not eq(nil)
  end

  it "receives update_status_closed responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sid": "UTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa1",
          "channel_sid": "UOaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa1",
          "interaction_sid": "KDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "type": "agent",
          "url": "https://flex-api.twilio.com/v1/Interactions/KDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels/UOaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa1/Participants/UTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa1"
      }
      ]
    ))

    actual = @client.flex_api.v1.interaction('KDXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                .channels('UOXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                .participants('UOXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update(status: 'closed')

    expect(actual).to_not eq(nil)
  end
end