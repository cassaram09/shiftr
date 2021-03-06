# shiftr #

### Description ###

This is a Rails app that creates a scheduling platform for shift employees. Employees sign up and submit a shift request form. The administrator(s) can edit employee data, add/edit shifts, view shift requests, and assign shifts accordingly.

[shiftr](https://github.com/zachnewburgh/shiftr) uses the [devise](https://github.com/plataformatec/devise), [OmniAuth Facebook](https://github.com/mkdynamic/omniauth-facebook), and [Paperclip](https://github.com/thoughtbot/paperclip) gems to successfully execute.

### Installation Guide ###

If not already available, install [Ruby](https://www.ruby-lang.org/en/documentation/installation/) and [Bundler](http://bundler.io/#getting-started).

Then, run the following in your command line:

```
git clone https://github.com/zachnewburgh/shiftr.git
cd shiftr
bundle
bin/rake db:migrate
```

To start up a local server, run `rails s` in your command line, and then navigate to `localhost:3000` in your web browser.

### Contributors' Guide ###

File a ticket on the [shiftr issue tracker](https://github.com/zachnewburgh/shiftr/issues), and provide as much information as possible. In advance, thanks for your helpful feedback!

### License ###

Copyright (c) 2016 Zach Newburgh.