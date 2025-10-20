module ContextMenuDueDateHelper
  include Redmine::Utils::DateCalculation

  def context_menu_due_date_options
    [
      [l('context_menu_due_date.today'), Date.today],
      [l('context_menu_due_date.tomorrow'), 1.day.from_now.to_date],
      [l('context_menu_due_date.in_2_days'), 2.day.from_now.to_date],
      [l('context_menu_due_date.next_workday'), add_working_days(Date.today, 1)],
      [l('context_menu_due_date.in_7_days'), 7.day.from_now.to_date],
      [l('context_menu_due_date.in_14_days'), 14.day.from_now.to_date],
      [l('context_menu_due_date.in_30_days'), 30.day.from_now.to_date],
      [l('context_menu_due_date.none'), 'none']
     ]
  end
end
