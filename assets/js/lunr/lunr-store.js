var store = [{
        "title": "Layout: Author Override",
        "excerpt":"Sites that may have content authored from various individuals can be accommodated by using data files.   To attribute an author to a post or page that is different from the site author specified in _config.yml:   Step 1. Create _data/authors.yml and add authors using the following format. Anything variables found under author in _config.yml can be used (e.g. name, bio, avatar, author links, etc.).   # /_data/authors.yml  Billy Rick:   name        : \"Billy Rick\"   bio         : \"What do you want, jewels? I am a very extravagant man.\"   avatar      : \"/assets/images/bio-photo-2.jpg\"   links:     - label: \"Email\"       icon: \"fas fa-fw fa-envelope-square\"       url: \"mailto:billyrick@rick.com\"     - label: \"Website\"       icon: \"fas fa-fw fa-link\"       url: \"https://thewhip.com\"     - label: \"Twitter\"       icon: \"fab fa-fw fa-twitter-square\"       url: \"https://twitter.com/extravagantman\"  Cornelius Fiddlebone:   name        : \"Cornelius Fiddlebone\"   bio         : \"I ordered what?\"   avatar      : \"/assets/images/bio-photo.jpg\"   links:     - label: \"Email\"       icon: \"fas fa-fw fa-envelope-square\"       url: \"mailto:cornelius@thewhip.com\"     - label: \"Twitter\"       icon: \"fab fa-fw fa-twitter-square\"       url: \"https://twitter.com/rhymeswithsackit\"   Step 2. Assign one of the authors in authors.yml to a post or page you wish to override the site.author with.   Example: To assign Billy Rick as an author for a post the following YAML Front Matter would be applied:   author: Billy Rick  ","categories": ["Sample category"],
        "tags": ["simple","move it"],
        "url": "/test-file.html/",
        "teaser":null},{
        "title": "Install jekyll on windows step by step",
        "excerpt":"Install jekyll on windows step by step   Here is the list of tools or plugins I needed to install to run the blog locally.   Windows      Install jekyll on windows   VSCode extensions      Markdown All in One   Code Spell Checker   Steps      run bundle install (first time only)   bundle exec jekyll serve to serve the application   Tools that didn’t work   For some unknown reason, installing via choco didn’t didn’t work.      Chocolatey (Kept)   Jekyll (Removed)  ","categories": ["Blog","Configuration"],
        "tags": ["jekyll","change it"],
        "url": "/install-jekyll-on-windows.html/",
        "teaser":null},{
        "title": "Important notes",
        "excerpt":"Some important notes   How to run this site using visual studio code  bundle exec jekyll serve  Application will run here  http://127.0.0.1:4000/   or you can type  bundle exec jekyll serve -o  which will build the application run on the url   Tips for visual studio code  To view command in visual studio code  Type ctrl+shift+p   Important Links     Architecture Playbook   Government Digital Service   Minimal Mistakes - A Jekyll theme   Repository for this website  Storage Repository: https://github.com/mahedee/my-blogs  Site Repository : https://github.com/mahedee/mahedee.github.io   Convert markdown to jekyll  ","categories": ["Blog","Visual Studio Code","Links"],
        "tags": ["notes","unpublished"],
        "url": "/important-note-unpublished.html/",
        "teaser":null},{
        "title": "Markdown Syntax",
        "excerpt":"Hyperlink  Markdown syntax  [Source Code](https://github.com/mahedee/code-sample/tree/master/auth-demo/MVCAuth)  Rendered output  Source Code   Commenting on markdown   &lt;!-- Single or multiline commenting--&gt;      ","categories": ["Github"],
        "tags": ["markdown","md"],
        "url": "/markdown-syntax.html/",
        "teaser":null},{
        "title": "Getting Started with GitHub",
        "excerpt":"Getting Started with GitHub          Create a GitHub account.            Setting up git on your computer              Download and install the latest version of Git.       Set your username in Git.                Create a repository       Clone your repository    For example:     git clone https://github.com/mahedee/eSchool.git       Pull and push to repository   Pull command uses to get updated files from github repository to your local machine  git pull --rebase upstream master or  git pull   Push command uses to sync your local file to github repository   Add files for the commit  git add .  Write a message for the commit  git commit -m \"complete feature-joining\"  git push origin feature-joining or  git push  ","categories": ["Source Control"],
        "tags": ["git","source-control"],
        "url": "/getting-started-with-github.html/",
        "teaser":null},{
        "title": "Branching and merging in GitHub",
        "excerpt":"Branching and merging in GitHub      To create a branch     $ git checkout -b branch01 Switched to a new branch 'branch01' or  $git branch branch01       To switch to a branch  ```github $git checkout    Example $git checkout branch03   * **Push files to the a branch**   First switch to the specific branch. Then add or modify files. To add files for the commit run the following command. ```github $ git add .   $ git push origin &lt;branch name&gt;  Example: $ git push origin branch01      Merge branch01 with master branch     $ git checkout master Switched to branch 'master' Your branch is up-to-date with 'origin/master'.       $ git merge branch01   $ git commit -m \"merge branch01\"   $ git push   References     Git Branching - Basic Branching and Merging  ","categories": ["Source Control"],
        "tags": ["git","source-control"],
        "url": "/branching-and-merging.html/",
        "teaser":null},{
        "title": "Resolve git conflict using meld",
        "excerpt":"Resolve git conflict using meld      Install meld in windows   Configure meld in your pc            Edit gitconfig file in C:\\Users&lt;username&gt;\\       Add following line in the gitconfig file   ```text   [diff]   tool = meld   [difftool “meld”]    path = C:/Program Files (x86)/Meld/Meld.exe    [difftool]   prompt = false           ```       Now check and resolve conflict using the following command     $ git difftool origin/master       Refereces     Git Tutorial 7: Diff and Merge using meld 2019  ","categories": ["Source Control"],
        "tags": ["git","source-control"],
        "url": "/resolve-git-conflict.html/",
        "teaser":null},{
        "title": "How to contribute on an open source project",
        "excerpt":"How to contribute on an open source project   Step 1: Fork the repository on which you want to contribute  For example, I have forked the following repository  https://github.com/OpenCodeFoundation/eSchool   After forking my repository has became  https://github.com/mahedee/eSchool   Step 2: Clone your forked project    For example:  git clone https://github.com/mahedee/eSchool.git  So your remote repository is https://github.com/mahedee/eSchool.git  if you want to see the remote repository type   git remote -v  output will be like   origin  https://github.com/mahedee/eSchool.git (fetch) origin  https://github.com/mahedee/eSchool.git (push)  Here I see that the name of my remote repository is origin   Step 3: Add the original repository in the local repository  Now add the original repository as origin in the local repository and name as upstream   git remote add upstream https://github.com/OpenCodeFoundation/eSchool   So you have two remote link in your local repository     origin - forked repository which is in your github   upstream - original project’s repository on which you will be contributed   if you run the following command   git remote -v  you will see the following output   origin  https://github.com/mahedee/eSchool.git (fetch) origin  https://github.com/mahedee/eSchool.git (push) upstream        https://github.com/OpenCodeFoundation/eSchool (fetch) upstream        https://github.com/OpenCodeFoundation/eSchool (push)   Step 4: Open a new branch in my local repository   Before opening any branch or contributing, please run the following command to up to date your local repository   git pull upstream master   To check is there any new commit on upstream run-   git status  you should see something like-   On branch master Your branch is behind 'upstream/master' by 14 commits, and can be fast-forwarded.   (use \"git pull\" to update your local branch)  nothing to commit, working tree clean  If you see, any changes in upstream, you can pull upstream to your local drive   Now open a branch name feature-joining using following command   git checkout -b feature-joining  Now you will see the   Mahedee@MahedeePC MINGW64 /d/Projects/Github/OpenCodeFoundation/eSchool (feature-joining)   instead of   Mahedee@MahedeePC MINGW64 /d/Projects/Github/OpenCodeFoundation/eSchool (master)   Step 5: Work on the new branch and push  Now work on the new branch. After completing your task, just add, commit and push. Before that, you should check is there any change in the upstream. If change occur, just merge it with your local using the following command.   git pull --rebase upstream master  If you get any conflit, you have to resolve it locally. If no conflit occur, type the following command one by one.   git add .   git commit -m \"complete feature-joining\"   git push origin feature-joining  Step 6: Make a pull request  After completing the previous step, you will see something like the following image with a button “Compare and pull request”      Now press the button and make a pull request. Now reviewer can accept or reject the pull request (PR).  You can think the whole workflow as below      Step 7: Add your change to your forked repository Now, if you want to add your change to your forked repository. Just type the following command. Remember, in this case, your forked repository and original repository may not sync if the PR is not accepted.   git checkout master  git merge feature-joining  git push origin master  Step 8: Sync forked repository with original repository  If you want to sync your forked repository with original repository at any time. Tyep the following command.   git pull upstream master  git push origin master   Step 9: Delete the branch After accepting or rejecting your PR. You should remove the branch. For new work, you should create a new branch. To remove the local branch type the following command  git branch -d feature-joining  If you want to remove this branch from github then type the following command.  git push origin :feature-joining   Thank you for your patience :)  ","categories": ["Source Control"],
        "tags": ["git","source-control"],
        "url": "/how-to-contribute-an-opensource-project.html/",
        "teaser":null},{
        "title": "Authentication and authorization using ASP.NET MVC",
        "excerpt":"  Step1: Select ASP.NET Web Application (.NET Framework)   Step2: Type project and solution name  Type project name as “MVCAuth” and also solution name as “MVC Auth”   Step 3: Select project template     Select project template as Web Application (Model-View-Controller)   Change authentication to Individual User Authentication   Click create button   Step 4: Add some model and view model class     Create Role Model class in Models folder as follows      public class Role : IdentityRole   {    }           Create UserRoleVM View Model class in Models folder as follows       public class UserRoleVM   {       public string UserId { get; set; }       public string RoleId { get; set; }        public string UserName { get; set; }       public string RoleName { get; set; }   }           Create UsersRolesVM View Model class in Models folder as follows       public class UsersRolesVM   {       //public string UserName { get; set; }       public ApplicationUser User { get; set; }        public IEnumerable&lt;string&gt; RoleNames { get; set; }   }           Step 5: Add Controllers to the application     Add RolesController in Controllers folder   Choose template MVC 5 Controller with read/write actions   Modify RolesController as follows       public class RolesController : Controller     {         private ApplicationDbContext db = new ApplicationDbContext();         // GET: Roles         public ActionResult Index()         {             var roleStore = new RoleStore&lt;IdentityRole&gt;(db);             var roleManager = new RoleManager&lt;IdentityRole&gt;(roleStore);             var roles = roleManager.Roles.ToList();             return View(roles);         }          // GET: Roles/Details/5         public ActionResult Details(int id)         {             return View();         }          // GET: Roles/Create         public ActionResult Create()         {             return View();         }          // POST: Roles/Create         [HttpPost]         public ActionResult Create(IdentityRole role)         {             try             {                 // TODO: Add insert logic here                  var roleStore = new RoleStore&lt;IdentityRole&gt;(db);                 var roleManager = new RoleManager&lt;IdentityRole&gt;(roleStore);                  if(!roleManager.RoleExists(role.Name))                 {                     roleManager.Create(role);                 }                  return RedirectToAction(\"Index\");             }             catch             {                 return View();             }         }          // GET: Roles/Edit/5         public ActionResult Edit(int id)         {             return View();         }          // POST: Roles/Edit/5         [HttpPost]         public ActionResult Edit(int id, FormCollection collection)         {             try             {                 // TODO: Add update logic here                  return RedirectToAction(\"Index\");             }             catch             {                 return View();             }         }          // GET: Roles/Delete/5         public ActionResult Delete(int id)         {             return View();         }          // POST: Roles/Delete/5         [HttpPost]         public ActionResult Delete(int id, FormCollection collection)         {             try             {                 // TODO: Add delete logic here                  return RedirectToAction(\"Index\");             }             catch             {                 return View();             }         }     }      Add UsersRoleController in Controllers folder   Choose template MVC 5 Controller with read/write actions   Modify UsersRoleController as follows       public class UsersRoleController : Controller     {         ApplicationDbContext db = new ApplicationDbContext();         // GET: UsersRole         public ActionResult Index()         {             List&lt;UsersRolesVM&gt; usersRolesVMs = new List&lt;UsersRolesVM&gt;();             List&lt;ApplicationUser&gt; users = db.Users.ToList();              var userManager = new UserManager&lt;ApplicationUser&gt;(new UserStore&lt;ApplicationUser&gt;(db));              foreach (ApplicationUser user in users)             {                 UsersRolesVM usersRolesVM = new UsersRolesVM();                 usersRolesVM.User = user;                 usersRolesVM.RoleNames = userManager.GetRoles(user.Id);                 usersRolesVMs.Add(usersRolesVM);             }             return View(usersRolesVMs);         }          // GET: UsersRole/Details/5         public ActionResult Details(int id)         {             return View();         }          // GET: UsersRole/Create         public ActionResult Create()         {              var roleStore = new RoleStore&lt;IdentityRole&gt;(db);             var roleManager = new RoleManager&lt;IdentityRole&gt;(roleStore);             var roles = roleManager.Roles.ToList();               ViewBag.UserId = new SelectList(db.Users.ToList(), \"Id\", \"UserName\");             ViewBag.RoleName = new SelectList(roles, \"Name\", \"Name\");              return View();         }          // POST: UsersRole/Create         [HttpPost]         //public ActionResult Create(FormCollection collection)         public ActionResult Create(UserRoleVM userRole)         {             try             {                if(userRole != null)                 {                     var userManager = new UserManager&lt;ApplicationUser&gt;(new UserStore&lt;ApplicationUser&gt;(db));                     userManager.AddToRole(userRole.UserId, userRole.RoleName);                 }                  return RedirectToAction(\"Index\");             }             catch             {                 return View();             }         }          // GET: UsersRole/Edit/5         public ActionResult Edit(int id)         {             return View();         }          // POST: UsersRole/Edit/5         [HttpPost]         public ActionResult Edit(int id, FormCollection collection)         {             try             {                 // TODO: Add update logic here                  return RedirectToAction(\"Index\");             }             catch             {                 return View();             }         }          // GET: UsersRole/Delete/5         public ActionResult Delete(int id)         {             return View();         }          // POST: UsersRole/Delete/5         [HttpPost]         public ActionResult Delete(int id, FormCollection collection)         {             try             {                 // TODO: Add delete logic here                  return RedirectToAction(\"Index\");             }             catch             {                 return View();             }         }     }    Source Code  ","categories": ["dotnet"],
        "tags": ["dotnet","mvc","c-sharp"],
        "url": "/authentication-and-authorization-in-asp.net-mvc.html/",
        "teaser":null},{
        "title": "Speaking at Career Adda at MBSTU",
        "excerpt":" Organized by CSE Family of MBSTU  Venue: Online/Virtual  Date: 21 August, 2020      ","categories": ["Speech","Technical Speech"],
        "tags": ["speech","tech"],
        "url": "/speaking-at-career-adda-at-cse-family-of-mbstu.html/",
        "teaser":null},{
        "title": "Image detection using custom vision AI",
        "excerpt":"What is Dependency Injection? In software engineering, dependency injection is a software design pattern that implements inversion of control for resolving dependencies. – Wikipedia. It makes software components are loosely coupled.   Advantages of Dependency Injection     Flexibility to use alternative implementation of service.   Configurable &amp; easy to use   Make system loosely couple   Code becomes more reusable, testable, readable and manageable.   Reduction of boilerplate code in the application objects   What is Ninject?     Open Source Inversion of Control (IOC)   It is a Dependency Injector for .NET created by Nate Kohari   It’s very easy to use.   Easily add from nuget.   For more information visit Ninject.org Let’s come to the implementation of DI using Ninject in ASP.NET MVC   Tools and Technology used I used following tools and technology to develop the project –      Visual Studio 2013   Visual C#   ASP.NET MVC 5   Entity Framework 6   Razor view engine   Ninject for MVC5  ","categories": ["ASP.NET (All)","ASP.NET MVC","C#","Software Design Pattern"],
        "tags": ["mytag","change it"],
        "url": "/design-image.html/",
        "teaser":null}]
