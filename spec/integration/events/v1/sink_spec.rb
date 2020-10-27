##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'Sink' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.events.v1.sinks('DGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://events.twilio.com/v1/Sinks/DGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "status": "initialized",
          "sink_configuration": {},
          "description": "description",
          "sid": "DGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2015-07-30T20:00:00Z",
          "sink_type": "kinesis",
          "date_updated": "2015-07-30T20:00:00Z",
          "url": "https://events.twilio.com/v1/Sinks/DGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "links": {
              "sink_test": "https://events.twilio.com/v1/Sinks/DGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Test",
              "sink_validate": "https://events.twilio.com/v1/Sinks/DGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Validate"
          }
      }
      ]
    ))

    actual = @client.events.v1.sinks('DGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.events.v1.sinks.create(description: 'description', sink_configuration: {}, sink_type: 'kinesis')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {
        'Description' => 'description',
        'SinkConfiguration' => Twilio.serialize_object({}),
        'SinkType' => 'kinesis',
    }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://events.twilio.com/v1/Sinks',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "status": "initialized",
          "sink_configuration": {
              "arn": "4242",
              "role_arn": "abc123",
              "external_id": "010101"
          },
          "description": "description",
          "sid": "DGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2015-07-30T20:00:00Z",
          "sink_type": "kinesis",
          "date_updated": "2015-07-30T20:00:00Z",
          "url": "https://events.twilio.com/v1/Sinks/DGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "links": {
              "sink_test": "https://events.twilio.com/v1/Sinks/DGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Test",
              "sink_validate": "https://events.twilio.com/v1/Sinks/DGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Validate"
          }
      }
      ]
    ))

    actual = @client.events.v1.sinks.create(description: 'description', sink_configuration: {}, sink_type: 'kinesis')

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.events.v1.sinks('DGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://events.twilio.com/v1/Sinks/DGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::Response.new(
        204,
      nil,
    ))

    actual = @client.events.v1.sinks('DGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()

    expect(actual).to eq(true)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.events.v1.sinks.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://events.twilio.com/v1/Sinks',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sinks": [],
          "meta": {
              "page": 0,
              "page_size": 10,
              "first_page_url": "https://events.twilio.com/v1/Sinks?PageSize=10&Page=0",
              "previous_page_url": null,
              "url": "https://events.twilio.com/v1/Sinks?PageSize=10&Page=0",
              "next_page_url": null,
              "key": "sinks"
          }
      }
      ]
    ))

    actual = @client.events.v1.sinks.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_results responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sinks": [
              {
                  "status": "initialized",
                  "sink_configuration": {},
                  "description": "A Sink",
                  "sid": "DGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "date_created": "2015-07-30T20:00:00Z",
                  "sink_type": "kinesis",
                  "date_updated": "2015-07-30T20:00:00Z",
                  "url": "https://events.twilio.com/v1/Sinks/DGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "links": {
                      "sink_test": "https://events.twilio.com/v1/Sinks/DGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Test",
                      "sink_validate": "https://events.twilio.com/v1/Sinks/DGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Validate"
                  }
              },
              {
                  "status": "initialized",
                  "sink_configuration": {},
                  "description": "ANOTHER Sink",
                  "sid": "DGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab",
                  "date_created": "2015-07-30T20:00:00Z",
                  "sink_type": "kinesis",
                  "date_updated": "2015-07-30T20:00:00Z",
                  "url": "https://events.twilio.com/v1/Sinks/DGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab",
                  "links": {
                      "sink_test": "https://events.twilio.com/v1/Sinks/DGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab/Test",
                      "sink_validate": "https://events.twilio.com/v1/Sinks/DGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab/Validate"
                  }
              }
          ],
          "meta": {
              "page": 0,
              "page_size": 20,
              "first_page_url": "https://events.twilio.com/v1/Sinks?PageSize=20&Page=0",
              "previous_page_url": null,
              "url": "https://events.twilio.com/v1/Sinks?PageSize=20&Page=0",
              "next_page_url": null,
              "key": "sinks"
          }
      }
      ]
    ))

    actual = @client.events.v1.sinks.list()

    expect(actual).to_not eq(nil)
  end
end