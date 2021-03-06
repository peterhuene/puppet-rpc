# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: type.proto

require 'google/protobuf'

require_relative 'exception'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "PuppetRubyHost.Protocols.DescribeTypeRequest" do
    optional :environment, :string, 1
    optional :name, :string, 2
  end
  add_message "PuppetRubyHost.Protocols.DescribeTypeResponse" do
    oneof :kind do
      optional :type, :message, 1, "PuppetRubyHost.Protocols.DescribeTypeResponse.Type"
      optional :exception, :message, 2, "PuppetRubyHost.Protocols.Exception"
    end
  end
  add_message "PuppetRubyHost.Protocols.DescribeTypeResponse.Type" do
    optional :name, :string, 1
    optional :file, :string, 2
    optional :line, :int64, 3
    repeated :properties, :message, 4, "PuppetRubyHost.Protocols.DescribeTypeResponse.Type.Parameter"
    repeated :parameters, :message, 5, "PuppetRubyHost.Protocols.DescribeTypeResponse.Type.Parameter"
  end
  add_message "PuppetRubyHost.Protocols.DescribeTypeResponse.Type.Parameter" do
    optional :name, :string, 1
    repeated :values, :string, 2
    repeated :regexes, :string, 3
    optional :namevar, :bool, 4
  end
end

module PuppetRubyHost
  module Protocols
    DescribeTypeRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("PuppetRubyHost.Protocols.DescribeTypeRequest").msgclass
    DescribeTypeResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("PuppetRubyHost.Protocols.DescribeTypeResponse").msgclass
    DescribeTypeResponse::Type = Google::Protobuf::DescriptorPool.generated_pool.lookup("PuppetRubyHost.Protocols.DescribeTypeResponse.Type").msgclass
    DescribeTypeResponse::Type::Parameter = Google::Protobuf::DescriptorPool.generated_pool.lookup("PuppetRubyHost.Protocols.DescribeTypeResponse.Type.Parameter").msgclass
  end
end
