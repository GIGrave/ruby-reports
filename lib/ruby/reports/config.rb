# frozen_string_literal: true

module Ruby
  module Reports
    class Config
      BATCH_SIZE = 10_000
      DEFAULT_EXPIRE_TIME = 86_400
      DEFAULT_CODING = 'utf-8'
      DEFAULT_CSV_OPTIONS = {col_sep: ';', row_sep: "\r\n"}
      DEFAULT_QUEUE = 'reports'

      DEFAULT_CONFIG_ATTRIBUTES = [
        :directory,
        :source,
        :extension,
        :batch_size,
        :encoding,
        :expire_in,
        :csv_options,
        :storage,
        :queue,
      ]

      def self.config_attributes
        DEFAULT_CONFIG_ATTRIBUTES
      end

      attr_accessor(*config_attributes)
      attr_initialize config_attributes do
        @batch_size ||= BATCH_SIZE
        @encoding ||= DEFAULT_CODING
        @expire_in ||= DEFAULT_EXPIRE_TIME
        @csv_options ||= DEFAULT_CSV_OPTIONS
        @storage ||= Storages::OBJECT
        @queue ||= DEFAULT_QUEUE
      end
    end
  end
end
