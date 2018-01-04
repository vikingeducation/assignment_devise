module ApplicationHelper

  def btn(style = 'secondary')
    "btn btn-sm btn-#{style}"
  end

  def bootstrap_flash_class(type)
    case type
    when 'alert' then 'warning'
    when 'error' then 'danger'
    when 'notice' then 'success'
    else
      'info'
    end
  end
end
