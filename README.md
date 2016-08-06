# MasterMind

You are to program the classic board game MasterMind.

Here is a sample [online version](http://www.web-games-online.com/mastermind/index.php)

Our MasterMind game will only have six colors:
- Blue
- Orange
- Green
- Purple
- Yellow
- Pink

Our MasterMind will have a code length of four secret colors.

Our MasterMind game will allow for duplicate colors in the secret.

# Deliverables

- Fork this repository to your own github account.
- Your code should run with `ruby web.rb` and then browse your application via the port given by `sinatra`

# Explorer Mode
- You are given a MasterMind class that can manage an entire game of MasterMind
- Your web application should allow the user to
  - Start a new game (even in the middle, which should create a new game -- e.g. they can _give up_)
  - Allow them to make a guess after supplying four colors
    - any UI you want, but make it nice. Text input, drop downs, color boxes to click, drag-and-drop, etc.
  - Allow them to submit their guess
  - Show them the result for each past guess including the last
  - Allow the user to make ten guesses before marking the game lost
  - Show the user a nice result if they have won the game.
- The design should be professional so consider fonts, colors, headers, images, spacing, etc.
- You do *not* have to duplicate the design of a MasterMind board, but do not vary so far from that design that it isn't clear how the game works.

# Adventure Mode
- Save a scoreboard data file to include:
  - Total # of games played
  - Total # of games won
  - Smallest # of guesses to a win

# Epic Mode
- Allow for a two player mode, where one player supplies the initial secret and the other user makes the guesses. The computer should still evaluate each guess and present the results.

Sample HAML file

!!! 5
%html(lang="en")
  %head
    %meta(charset="utf-8")
    %meta(http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1")
    %meta(name="viewport" content="width=device-width, initial-scale=1.0")
    %title= content_for?(:title) ? yield(:title) : "<%= app_name %>"
    = csrf_meta_tags
    / Le HTML5 shim, for IE6-8 support of HTML elements
    /[if lt IE 9]
      = javascript_include_tag "//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.6.1/html5shiv.js"
    = stylesheet_link_tag "application", :media => "all"
    = favicon_link_tag 'apple-touch-icon-144x144-precomposed.png', :rel => 'apple-touch-icon-precomposed', :type => 'image/png', :sizes => '144x144'
    = favicon_link_tag 'apple-touch-icon-114x114-precomposed.png', :rel => 'apple-touch-icon-precomposed', :type => 'image/png', :sizes => '114x114'
    = favicon_link_tag 'apple-touch-icon-72x72-precomposed.png', :rel => 'apple-touch-icon-precomposed', :type => 'image/png', :sizes => '72x72'
    = favicon_link_tag 'apple-touch-icon-precomposed.png', :rel => 'apple-touch-icon-precomposed', :type => 'image/png'
    = favicon_link_tag 'favicon.ico', :rel => 'shortcut icon'
    = javascript_include_tag "application"
  %body
    .navbar.navbar-static-top
      .container
        %button.navbar-toggle(type="button" data-toggle="collapse" data-target=".navbar-responsive-collapse")
          %span.icon-bar
          %span.icon-bar
          %span.icon-bar
        %a.navbar-brand(href="#") <%= app_name %>
        .nav-collapse.collapse.navbar-responsive-collapse
          %ul.nav.navbar-nav
            %li= link_to "Link 1", "/path1"
            %li= link_to "Link 2", "/path2"
            %li= link_to "Link 3", "/path3"
            %li= link_to "Link 3", "/path3"
    .container
      .row
        .col-lg-9
          = bootstrap_flash
          = yield
        .col-lg-3
          .well.sidebar-nav
            %h3 Sidebar
            %ul.nav.nav-list
              %li.nav-header Sidebar
              %li= link_to "Link 1", "/path1"
              %li= link_to "Link 2", "/path2"
              %li= link_to "Link 3", "/path3"
      %footer
        %p &copy; Company <%= Date.today.year %>
