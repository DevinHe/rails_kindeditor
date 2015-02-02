if defined?(Mongoid)
  module Mongoid::Document::ClassMethods
    def has_many_kindeditor_assets(*args)
      options = args.extract_options!
      asset_name = args[0] ? args[0].to_s : 'assets'
      has_many asset_name.to_sym, :class_name => 'Kindeditor::Asset', :inverse_of => 'owner', :dependent => options[:dependent]

      class_name = self.name
      Kindeditor::Asset.class_eval do
        belongs_to :owner, :class_name => class_name, :inverse_of => "#{asset_name}"
      end
    end
  end
end
