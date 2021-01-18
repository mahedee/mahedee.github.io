var store = [{
        "title": "Layout: Author Override",
        "excerpt":"Sites that may have content authored from various individuals can be accommodated by using data files.   To attribute an author to a post or page that is different from the site author specified in _config.yml:   Step 1. Create _data/authors.yml and add authors using the following format. Anything variables found under author in _config.yml can be used (e.g. name, bio, avatar, author links, etc.).   # /_data/authors.yml  Billy Rick:   name        : \"Billy Rick\"   bio         : \"What do you want, jewels? I am a very extravagant man.\"   avatar      : \"/assets/images/bio-photo-2.jpg\"   links:     - label: \"Email\"       icon: \"fas fa-fw fa-envelope-square\"       url: \"mailto:billyrick@rick.com\"     - label: \"Website\"       icon: \"fas fa-fw fa-link\"       url: \"https://thewhip.com\"     - label: \"Twitter\"       icon: \"fab fa-fw fa-twitter-square\"       url: \"https://twitter.com/extravagantman\"  Cornelius Fiddlebone:   name        : \"Cornelius Fiddlebone\"   bio         : \"I ordered what?\"   avatar      : \"/assets/images/bio-photo.jpg\"   links:     - label: \"Email\"       icon: \"fas fa-fw fa-envelope-square\"       url: \"mailto:cornelius@thewhip.com\"     - label: \"Twitter\"       icon: \"fab fa-fw fa-twitter-square\"       url: \"https://twitter.com/rhymeswithsackit\"   Step 2. Assign one of the authors in authors.yml to a post or page you wish to override the site.author with.   Example: To assign Billy Rick as an author for a post the following YAML Front Matter would be applied:   author: Billy Rick  ","categories": ["Sample category"],
        "tags": ["simple","move it"],
        "url": "/test-file.html",
        "teaser":null},{
        "title": "Install jekyll on windows step by step",
        "excerpt":"Install jekyll on windows step by step   Here is the list of tools or plugins I needed to install to run the blog locally.   Windows      Install jekyll on windows   VSCode extensions      Markdown All in One   Code Spell Checker   Steps      run bundle install (first time only)   bundle exec jekyll serve to serve the application   Tools that didn’t work   For some unknown reason, installing via choco didn’t didn’t work.      Chocolatey (Kept)   Jekyll (Removed)  ","categories": ["Blog","Configuration"],
        "tags": ["jekyll","change it"],
        "url": "/install-jekyll-on-windows.html",
        "teaser":null},{
        "title": "Important notes",
        "excerpt":"Some important notes   How to run this site using visual studio code  bundle exec jekyll serve  Application will run here  http://127.0.0.1:4000/   or you can type  bundle exec jekyll serve -o  which will build the application run on the url   Tips for visual studio code  To view command in visual studio code  Type ctrl+shift+p   Important Links     Architecture Playbook   Government Digital Service   Minimal Mistakes - A Jekyll theme   Repository for this website  Storage Repository: https://github.com/mahedee/my-blogs  Site Repository : https://github.com/mahedee/mahedee.github.io   Convert markdown to jekyll  ","categories": ["Blog","Visual Studio Code","Links"],
        "tags": ["notes","unpublished"],
        "url": "/important-note-unpublished.html",
        "teaser":null},{
        "title": "Speaking at Career Adda at MBSTU",
        "excerpt":"Speaking at Career Adda, 2020  Organized by CSE Family of MBSTU  Venue: Online/Virtual  Date: 21 August, 2020      ","categories": ["Speech","Technical Speech"],
        "tags": ["speech","tech"],
        "url": "/speaking-at-career-adda-at-cse-family-of-mbstu.html",
        "teaser":null},{
        "title": "Image detection using custom vision AI",
        "excerpt":"What is Dependency Injection? In software engineering, dependency injection is a software design pattern that implements inversion of control for resolving dependencies. – Wikipedia. It makes software components are loosely coupled.   Advantages of Dependency Injection     Flexibility to use alternative implementation of service.   Configurable &amp; easy to use   Make system loosely couple   Code becomes more reusable, testable, readable and manageable.   Reduction of boilerplate code in the application objects   What is Ninject?     Open Source Inversion of Control (IOC)   It is a Dependency Injector for .NET created by Nate Kohari   It’s very easy to use.   Easily add from nuget.   For more information visit Ninject.org Let’s come to the implementation of DI using Ninject in ASP.NET MVC   Tools and Technology used I used following tools and technology to develop the project –      Visual Studio 2013   Visual C#   ASP.NET MVC 5   Entity Framework 6   Razor view engine   Ninject for MVC5  ","categories": ["ASP.NET (All)","ASP.NET MVC","C#","Software Design Pattern"],
        "tags": ["mytag","change it"],
        "url": "/design-image.html",
        "teaser":null}]
