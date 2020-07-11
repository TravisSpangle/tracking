module Tracker
  extend ActiveSupport::Concern

  included do
    after_action :load_tracker_method
  end

  def load_tracker_method
    return unless klass_exist? && method_exist?
    klass.instance_method(action_name).bind(self).call
  end

  def klass_name
    self.class.name.sub(/Controller/,'Tracker')
  end

  def klass
    klass_name.constantize
  end

  def klass_exist?
    defined?(klass_name)
  end

  def method_exist?
    klass.instance_methods(false).include?(action_name.to_sym)
  end
end
