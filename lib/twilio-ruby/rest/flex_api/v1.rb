##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class FlexApi
      class V1 < Version
        ##
        # Initialize the V1 version of FlexApi
        def initialize(domain)
          super
          @version = 'v1'
          @channel = nil
          @configuration = nil
          @flex_flow = nil
          @assessments = nil
          @insights_assessments_comment = nil
          @insights_questionnaires = nil
          @insights_questionnaires_category = nil
          @insights_questionnaires_question = nil
          @insights_segments = nil
          @insights_session = nil
          @insights_settings_answer_sets = nil
          @insights_settings_comment = nil
          @insights_user_roles = nil
          @interaction = nil
          @web_channel = nil
        end

        ##
        # @param [String] sid The SID of the Flex chat channel resource to fetch.
        # @return [Twilio::REST::Flex_api::V1::ChannelContext] if sid was passed.
        # @return [Twilio::REST::Flex_api::V1::ChannelList]
        def channel(sid=:unset)
          if sid.nil?
              raise ArgumentError, 'sid cannot be nil'
          end
          if sid == :unset
              @channel ||= ChannelList.new self
          else
              ChannelContext.new(self, sid)
          end
        end

        ##
        # @return [Twilio::REST::Flex_api::V1::ConfigurationContext]
        def configuration
          @configuration ||= ConfigurationContext.new self
        end

        ##
        # @param [String] sid The SID of the Flex Flow resource to fetch.
        # @return [Twilio::REST::Flex_api::V1::FlexFlowContext] if sid was passed.
        # @return [Twilio::REST::Flex_api::V1::FlexFlowList]
        def flex_flow(sid=:unset)
          if sid.nil?
              raise ArgumentError, 'sid cannot be nil'
          end
          if sid == :unset
              @flex_flow ||= FlexFlowList.new self
          else
              FlexFlowContext.new(self, sid)
          end
        end

        ##
        # @return [Twilio::REST::Flex_api::V1::AssessmentsContext]
        def assessments
          @assessments ||= AssessmentsContext.new self
        end

        ##
        # @return [Twilio::REST::Flex_api::V1::InsightsAssessmentsCommentContext]
        def insights_assessments_comment
          @insights_assessments_comment ||= InsightsAssessmentsCommentList.new self
        end

        ##
        # @param [String] id The unique ID of the questionnaire
        # @return [Twilio::REST::Flex_api::V1::InsightsQuestionnairesContext] if id was passed.
        # @return [Twilio::REST::Flex_api::V1::InsightsQuestionnairesList]
        def insights_questionnaires(id=:unset)
          if id.nil?
              raise ArgumentError, 'id cannot be nil'
          end
          if id == :unset
              @insights_questionnaires ||= InsightsQuestionnairesList.new self
          else
              InsightsQuestionnairesContext.new(self, id)
          end
        end

        ##
        # @param [String] category_id The ID of the category to be update
        # @return [Twilio::REST::Flex_api::V1::InsightsQuestionnairesCategoryContext] if category_id was passed.
        # @return [Twilio::REST::Flex_api::V1::InsightsQuestionnairesCategoryList]
        def insights_questionnaires_category(category_id=:unset)
          if category_id.nil?
              raise ArgumentError, 'category_id cannot be nil'
          end
          if category_id == :unset
              @insights_questionnaires_category ||= InsightsQuestionnairesCategoryList.new self
          else
              InsightsQuestionnairesCategoryContext.new(self, category_id)
          end
        end

        ##
        # @param [String] question_id The unique ID of the question
        # @return [Twilio::REST::Flex_api::V1::InsightsQuestionnairesQuestionContext] if question_id was passed.
        # @return [Twilio::REST::Flex_api::V1::InsightsQuestionnairesQuestionList]
        def insights_questionnaires_question(question_id=:unset)
          if question_id.nil?
              raise ArgumentError, 'question_id cannot be nil'
          end
          if question_id == :unset
              @insights_questionnaires_question ||= InsightsQuestionnairesQuestionList.new self
          else
              InsightsQuestionnairesQuestionContext.new(self, question_id)
          end
        end

        ##
        # @param [String] segment_id To unique id of the segment
        # @return [Twilio::REST::Flex_api::V1::InsightsSegmentsContext] if segment_id was passed.
        # @return [Twilio::REST::Flex_api::V1::InsightsSegmentsList]
        def insights_segments(segment_id=:unset)
          if segment_id.nil?
              raise ArgumentError, 'segment_id cannot be nil'
          end
          if segment_id == :unset
              @insights_segments ||= InsightsSegmentsList.new self
          else
              InsightsSegmentsContext.new(self, segment_id)
          end
        end

        ##
        # @return [Twilio::REST::Flex_api::V1::InsightsSessionContext]
        def insights_session
          @insights_session ||= InsightsSessionContext.new self
        end

        ##
        # @return [Twilio::REST::Flex_api::V1::InsightsSettingsAnswerSetsContext]
        def insights_settings_answer_sets
          @insights_settings_answer_sets ||= InsightsSettingsAnswerSetsList.new self
        end

        ##
        # @return [Twilio::REST::Flex_api::V1::InsightsSettingsCommentContext]
        def insights_settings_comment
          @insights_settings_comment ||= InsightsSettingsCommentList.new self
        end

        ##
        # @return [Twilio::REST::Flex_api::V1::InsightsUserRolesContext]
        def insights_user_roles
          @insights_user_roles ||= InsightsUserRolesContext.new self
        end

        ##
        # @param [String] sid The SID of the Interaction resource to fetch.
        # @return [Twilio::REST::Flex_api::V1::InteractionContext] if sid was passed.
        # @return [Twilio::REST::Flex_api::V1::InteractionList]
        def interaction(sid=:unset)
          if sid.nil?
              raise ArgumentError, 'sid cannot be nil'
          end
          if sid == :unset
              @interaction ||= InteractionList.new self
          else
              InteractionContext.new(self, sid)
          end
        end

        ##
        # @param [String] sid The SID of the WebChannel resource to fetch.
        # @return [Twilio::REST::Flex_api::V1::WebChannelContext] if sid was passed.
        # @return [Twilio::REST::Flex_api::V1::WebChannelList]
        def web_channel(sid=:unset)
          if sid.nil?
              raise ArgumentError, 'sid cannot be nil'
          end
          if sid == :unset
              @web_channel ||= WebChannelList.new self
          else
              WebChannelContext.new(self, sid)
          end
        end

        ##
        # Provide a user friendly representation
        def to_s
          '<Twilio::REST::FlexApi::V1>'
        end
      end
    end
  end
end