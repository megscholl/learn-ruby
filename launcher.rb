# http://neurogami.com/content/neurogami-10_minutes_to_your_first_Ruby_app/



#!/usr/bin/env ruby

# Example application to demonstrate some basic Ruby features
# This code loads a given file into an associated application

     class Launcher
     end

     launcher = Launcher.new
     # variable assigned to a new 'instance' to the class Launcher 
     # pretty much everything in ruby is an object, including strings, numbers, and regular expressions, which use formal creation methods (Filename.new)
     # .new is a class method

     # when you create an instance of a Launcher class, you must pass in mapping... to create an instance that starts life with some set of data, pass in arguments to new:

     def initialize app_map
        @app_map = app_map
     end

     # define methods in Ruby by using def

     # ruby objects begin life with assorted built-in behavior

     # the @ symbol indicates the variable is an instance, which mean it is available anywhere in the object

class Launcher

     # Execute the given file using the associate app
    def run launcher
        application = select_app launcher
        system "#{application} #{launcher}"
     end
     # Run: Takes a file name as its argument and passes it to select_app to find out which application to execute, then uses Ruby system to invoke the application, passing the file name
     # System: put command into a sub-shell. 

     # Given a file, look up the matching application
     def select_app launcher
        ftype = file_type launcher
        @app_map[ ftype ]
     end
     # Select_app takes the file name, calls file_type to get a 'normalized' file extension, and then uses that as a key into @app_map to see which application to run

     # Return the part of the file name string after the last '.'
     def file_type launcher
        File.extname( launcher ).gsub( /^\./,'').downcase
     end
     # takes the file name and uses a class method to get the extension. the string returned by extame include the period, which then uses the code gsub (glocal substitute) to strip it. it then converts what remains to all lowercase letters

end

