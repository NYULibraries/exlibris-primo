module WebService
  module Request
    require 'test_helper'
    class RequestParamsTest < Test::Unit::TestCase
      class SearchDummy
        include Exlibris::Primo::WebService::Request::RequestParams
        include Exlibris::Primo::XmlUtil

        def to_xml
          build_xml { |xml|
            request_params_xml.call xml
          }
        end
      end

      def setup
        @key_1 = 'pc_availability_ind'
        @value_1 = 'true'
        @key_2 = 'pyrCategories'
        @value_2 = 'medicine;business'
      end

      def test_add_request_param
        search = SearchDummy.new
        search.add_request_param(@key_1, @value_1)
        search.add_request_param(@key_2, @value_2)
        assert_equal @key_1, search.request_params[0].key
        assert_equal @value_1, search.request_params[0].value
        assert_equal @key_2, search.request_params[1].key
        assert_equal @value_2, search.request_params[1].value
      end


      def test_request_params
        search = SearchDummy.new
        assert_equal [], search.request_params
      end

      def test_request_params_xml_with_no_params
        search = SearchDummy.new
        assert_equal "<RequestParams/>", search.to_xml
      end

      def test_request_params_xml_with_params
        search = SearchDummy.new
        search.add_request_param(@key_1, @value_1)
        search.add_request_param(@key_2, @value_2)
        assert_equal "<RequestParams>" \
                     "<RequestParam key=\"#{@key_1}\">" \
                     "#{@value_1}" \
                     "</RequestParam>" \
                     "<RequestParam key=\"#{@key_2}\">" \
                     "#{@value_2}" \
                     "</RequestParam>" \
                     "</RequestParams>", search.to_xml

      end
    end
  end
end
