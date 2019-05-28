FactoryBot.define do
  factory :market do
    name { "MyString" }
    address1 { "MyString" }
    address2 { "MyString" }
    city { "MyString" }
    state { "MyString" }
    zip { 12345 }
    latitude { "9.99999" }
    longitude { "9.99999" }
    url { "MyString" }
    phone { "MyString" }
    open_mon {"2019-05-27 10:00:00"}
    open_tue {"2019-05-27 10:00:00"}
    open_wed {"2019-05-27 10:00:00"}
    open_thu {"2019-05-27 10:00:00"}
    open_fri {"2019-05-27 10:00:00"}
    open_sat {"2019-05-27 10:00:00"}
    open_sun {"2019-05-27 10:00:00"}
    close_mon {"2019-05-27 20:00:00"}
    close_tue {"2019-05-27 20:00:00"}
    close_wed {"2019-05-27 20:00:00"}
    close_thu {"2019-05-27 20:00:00"}
    close_fri {"2019-05-27 20:00:00"}
    close_sat {"2019-05-27 20:00:00"}
    close_sun {"2019-05-27 20:00:00"}
    manager { "MyString" }
  end
end
