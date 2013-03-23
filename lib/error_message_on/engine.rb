# coding: utf-8
module ErrorMessageOn
  class Engine < ::Rails::Engine
    initializer 'error_message_on.initialize' do
      config.to_prepare do
        ActiveSupport.on_load(:action_view) do
          include ErrorMessageOn::ErrorMessageHelper

          # ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
          #   "<span class=\"field_with_errors\">#{html_tag}</span>".html_safe
          # end
        end
      end
    end
  end
end
