# coding: utf-8
class ActionView::Helpers::FormBuilder
  def field_container(method, options = {}, &block)
    @template.field_container(@object_name,method,options,&block)
  end

  def error_message_on(method, options = {})
    @template.error_message_on(@object_name, method, objectify_options(options))
  end
end
