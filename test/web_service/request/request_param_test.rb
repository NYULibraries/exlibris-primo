module WebService
  module Request
    require 'test_helper'
    class RequestParamTest < Test::Unit::TestCase
      def setup
        @key = 'pc_availability_ind'
        @value = 'true'
      end

      def test_set_attributes
        param = Exlibris::Primo::WebService::Request::RequestParam.new()
        param.key = @key
        param.value = @value
        assert_equal "<RequestParam key=\"#{@key}\">" \
                     "#{@value}" \
                     "</RequestParam>", param.to_xml
      end

      def test_write_attributes
        param = Exlibris::Primo::WebService::Request::RequestParam.new(:key => 'pc_availability_ind', :value => 'true')
        assert_equal "<RequestParam key=\"#{@key}\">" \
                     "#{@value}" \
                     "</RequestParam>", param.to_xml
      end
    end
  end
end