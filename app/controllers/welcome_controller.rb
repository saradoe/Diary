class WelcomeController < ApplicationController
  def index
    @entries = Entry.all
		@website = [
			["http://tryruby.org/levels/4/challenges/3", "Try Ruby"],
			["http://wuaki.tv", "Where I spend 80% of my life"],
			["http://twitter.com/sara_doe", "Where I tell my life to strangers"],
			["http://instagram.com/sara_doe", "Where I SPAM everyone with pics of my cat"]
		]
  end
end
