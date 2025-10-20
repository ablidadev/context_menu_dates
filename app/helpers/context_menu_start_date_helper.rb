module ContextMenuStartDateHelper
  include Redmine::Utils::DateCalculation

  def context_menu_start_date_options
    [
      [l('context_menu_start_date.today'), Date.today],
      [l('context_menu_start_date.tomorrow'), 1.day.from_now.to_date],
      [l('context_menu_start_date.in_2_days'), 2.day.from_now.to_date],
      [l('context_menu_start_date.next_workday'), add_working_days(Date.today, 1)],
      [l('context_menu_start_date.in_7_days'), 7.day.from_now.to_date],
      [l('context_menu_start_date.in_14_days'), 14.day.from_now.to_date],
      [l('context_menu_start_date.in_30_days'), 30.day.from_now.to_date],
      [l('context_menu_start_date.none'), 'none']
    ]
  end
end