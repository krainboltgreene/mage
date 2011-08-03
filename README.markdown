mage
====

**Stable Version**: 0.4.8

`mage` is a ruby gem that can gather all of your machine's details.
Things that `mage` gathers: CPU details, Total Memory, Operating System version, and more.
Despite the name `mage` attempts to avoid magic, and keeps a very simple API.
If you know what you're looking for, you can use the name of the detail straight on the machine object.
No obscure dsl or details to wade into.


Examples
--------

``` ruby
require 'mage'

my_computer = Mage::Profile.new

p my_computer.os            #=> "Mac OS X 10.6.8 (10K549) (Darwin 10.8.0, 32-bit)"
p my_computer.cpu           #=> "Intel Core 2 Duo (2.4 GHz, 2 cores)"
p my_computer.ram           #=> "2 GB"
```

The above example uses the ease to remember combinations of details.
However you can make specific calls about the machine and `mage` will return them in Ruby native objects.
Here is an example of the more specific calls:

``` ruby
require 'mage'

my_computer = Mage::Profile.new

case my_computer.platform
  when "Darwin"
    p my_computer.machine.time_since_boot.class     #=> Fixnum
    p my_computer.machine.processor_speed           #=> "2.4 GHz"
  when "Windows"
    p my_computer.machine.windows_directory         #=> "C:\Windows"
    p my_computer.machine.product_id                #=> "89578-OEM-7332157-00061"
end
```


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

That's all you have to do.

**Testing**

To make sure you did everything right do the following:

``` ruby
$ ruby -e "require 'mage'; x = Darwin::Profile.new ; x.platform"
> "Darwin" or "Windows"
```


Issues & Documentation
----------------------

* [Documentation](http://krainboltgreene.github.com/mage/documentation)
* [Issues](https://github.com/krainboltgreene/mage/issues)

We welcome any pull requests or commits that improve `mage`.


Changelog
---------

**v0.4.8**

* Adding the README, COPYRIGHT, and other important documents
* Creating the website
* Adding a project RVMRC file
* Fixing old comments on the example

**v0.4.0**

* Adding support for Windows
* Refactoring the Windows and Darwin classes


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

* [Sandro Turriate](https://github.com/sandro), for inspiring me to make a benchmarking gem, and thus a system profiler
* [Puppet Labs](https://github.com/puppetlabs), for making `facter`, a system profiling gem for `puppet`
* [Opscode, Inc.](https://github.com/opscode), for making `ohai`, a system profiling gem for `chef`


License
-------

Copyright (c) 2011 Kurtis Rainbolt-Greene

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
