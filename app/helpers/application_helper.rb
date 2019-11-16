# frozen_string_literal: true

module ApplicationHelper
  def alert_class_for(flash_type)
    {
      success: 'alert-success',
      error: 'alert-danger',
      alert: 'alert-warning',
      notice: 'alert-info'
    }[flash_type.to_sym] || flash_type.to_s
  end

  def is_active?(path)
    request.path == path
  end

  def horizontal_form_for(*args, &block)
    options = args.extract_options!
    options.deep_merge! html: {},
                        wrapper: :horizontal_form,
                        wrapper_mappings: {
                          check_boxes: :horizontal_radio_and_checkboxes,
                          radio_buttons: :horizontal_radio_and_checkboxes,
                          file: :horizontal_file,
                          boolean: :horizontal_boolean
                        }
    html_class = options[:html][:class] || ''
    options[:html][:class] = [html_class, 'form-horizontal'].join(' ')
    simple_form_for(*args, options, &block)
  end
end
