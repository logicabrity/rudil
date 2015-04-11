rudil
=====

[rudil's homepage on github](http://github.com/logicabrity/rudil)
[![Gem Version](https://badge.fury.io/rb/rudil.svg)](http://badge.fury.io/rb/rudil)

DESCRIPTION
-----------

rudil is a dice library for the Ruby programming language.

FEATURES
--------

Roll dice with any number of sides.   
Methods provided for single and multiple rolls.  
Retrieve useful information about the rolls easily.  

INSTALL
-------

Assuming you installed [Gemcutter](http://gemcutter.org), all you need to do is:

    gem install rudil

SYNOPSIS
--------

### Creating a die

    require 'rudil'
    die = Rudil::Die.new

or

    require 'rudil'
    include Rudil
    die = Die.new

The die will have 6 sides per default. If you want another number of sides,
pass it as a parameter to the constructor:

    die = Die.new(20)

### Rolling the die

If you only need the result of a single throw, use the throw_once method:

    die.throw_once
    => 3

The throw method will return an array containing any number of throws:

    die.throw(5)
    => [6, 5, 3, 1, 3]

The die will be thrown once per default.

    die.throw
    => [4]

### Analysing the results

A *Throw* is a subclass of array with a few convenience methods added.
To use it, collect the rolls in an instance of it:

    throws = Throw.new( Die.new(20).throw(5) )
    => [3, 6, 16, 13, 18]

You can get information about

* the lowest and the highest roll
* the mean (floating point)
* the number of rolls above a certain value (or equal and above)
* the number of rolls below a certain value (or equal and below)

like this:
  
    throws.lowest
    => 3    
    throws.highest
    => 18
    throws.mean
    => 11.2
    throws.above(13)
    => 2
    throws.eq_or_above(13)
    => 3
    throws.below 3
    => 0
    throws.eq_or_below(3)
    => 1

LICENSE
-------

(The MIT License)

Copyright (c) 2009 Marc-Antonio Bisotti

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
