mage
====

**Stable Version**: 0.4.8

mage is a simple and easy way to get the details of your platform, like cpu hertz, memory size, and more.
Despite the name, mage attempts to avoid magical means and make the api intuitive, easily understood.
mage also only loads exactly what you need, when you need it, and never more.

Examples
--------

Using mage works like most well designed libraries:

``` ruby
my_computer = Mage::Profile.new
```

This will auto-magically gather all the information about your machine that you might want to know.
Now we can use very easy to remember methods on this object to get specific information:

``` ruby
puts "Operating System: " + my_computer.os    # => "Mac OS X 10.6.8"
puts "CPU: " + my_computer.cpu                # => "Intel Core 2 Duo"
puts "Memory: " + my_computer.ram             # => "2 GB"
```

And this is just the start as nearly any information you could want from a machine is right at your finger tips, via Mage Profile.


Installing
----------

**Requirements**

1. Ruby MRI 1.9.2
2. RubyGems 1.6.7
3. Mac OSX 1.6.8 **or** Windows Vista (Will add more as they get added)

Like any other gem, all you have to do is either use `gem install` or add it to your `Gemfile`:

``` ruby
source :rubygems

gem "mage", "0.4.8"
```

Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.


**Testing**

To make sure you did everything right, just do the following:

```
$ projectname -v
> what-should-appear
```


Issues & Documentation
----------------------

* [Documentation]()
* [Issues]()

Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.


Changelog
---------

**v1.0.0**

* Duis aute irure dolor
* Officia deserunt mollit
* Sunt in culpa qui
* Labore et dolore magna aliqua

**v0.9.0**

* Duis aute irure dolor
* Officia deserunt mollit
* Sunt in culpa qui
* Labore et dolore magna aliqua


Contributing
------------

* **Fork** the repository
* **Clone the repository** locally, or **edit via Github**
* Create a **new branch** using the [Git Flow Standard](http://yakiloo.com/getting-started-git-flow/) conventions
* Commit **often** and **when important**
* **DO NOT CHANGE** ANY OF THESE (without making a new branch for *that* change):
  * `*.gemspec`
  * `Rakefile`
  * `.rvmrc`
  * `.gitignore`
  * Any part of the git history
* **Write tests** specifically for the changes you've made, if no test exist
* **Push** your feature or hotfix branch to Github.
* Make a **Pull Request**


Credits
-------

* [name-of-person](mailto: email@email.com)
* [name-of-person](mailto: email@email.com)
* [name-of-person](mailto: email@email.com)
* [name-of-person](mailto: email@email.com)
* [name-of-person](mailto: email@email.com)


License
-------

Copyright (c) YEAR YOUR NAME

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
