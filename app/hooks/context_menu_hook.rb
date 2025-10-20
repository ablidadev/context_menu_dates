module ContextMenuHook
  class ContextMenuDueDateHookListener < Redmine::Hook::ViewListener
    render_on :view_issues_context_menu_start, :partial => 'issues/context_menu'
  end
end