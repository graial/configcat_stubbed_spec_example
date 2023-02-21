A minimal config_cat example implementing a Singleton on server initialization and mocking the call for use in rspec via webmock

## Steps
1. bundle
2. add your SDK key to `.env`
3. create a flag called `my_feature`
4. the homepage will display "my_feature is <On/Off>"
5. `bundle exec rspec` will run a minimal request spec a few dozen specs and puts the output to the terminal.

I'm having weird behaviour of the flag changing midway through the test suite on a different app so produced this minimal example which isn't encountering the same issue.  
Now that its done, I might as well post it in case it's helpful as a reference.