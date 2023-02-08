##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'InsightsSession' do
  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.flex_api.v1.insights_session().create(authorization: 'authorization')
    }.to raise_exception(Twilio::REST::TwilioError)

    headers = {'Authorization' => 'authorization', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://flex-api.twilio.com/v1/Insights/Session',
        headers: headers,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "session_expiry": "2022-09-27T09:28:01Z",
          "workspace_id": "clbi1eelh1x8z4.......ijpnyu",
          "session_id": "-----BEGIN PGP MESSAGE-----\n\nwcBMA11tX1FL13rp\u2026\u2026kHXd\n=vOBk\n-----END PGP MESSAGE-----\n",
          "base_url": "https://analytics.ytica.com/",
          "url": "https://flex-api.twilio.com/v1/Insights/Session"
      }
      ]
    ))

    actual = @client.flex_api.v1.insights_session().create()

    expect(actual).to_not eq(nil)
  end
end