def auth(controller)
  controller.stub(:authenticate)
  controller.stub(:current_user).and_return(double 'user', tenant_id: 3, locale: 'de', time_zone: 'Berlin', name: 'User', tenant_admin: false)
end
