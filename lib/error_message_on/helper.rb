# coding: utf-8
module ErrorMessageOn
  module ErrorMessageHelper
    def field_container(model, method, options = {}, &block)
      css_classes = options[:class].to_a
      if error_message_on(model, method).present?
        css_classes << 'withError'
      end
      content_tag('p', capture(&block), :class => css_classes.join(' '), :id => "#{model}_#{method}_field")
    end

    def error_message_on(object, method, options = {})
      object = convert_to_model(object)
      obj = object.respond_to?(:errors) ? object : instance_variable_get("@#{object}")

      if obj && obj.errors[method].present?
        errors = obj.errors[method].map { |err| h(err) }.join('<br />').html_safe
        content_tag(:p, errors, :class => 'inline-errors')
      else
        ''
      end
    end
  end
end
