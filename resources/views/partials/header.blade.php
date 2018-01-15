<div id="nav-content">
   <nav>
      <div class="row">
         <div class="col s12">
            <div class="nav-wrapper">
               <a href="/home" class="brand-logo">
               <img src="Dashboard1_files/logo.png">
               <span class="valign">
               <b class="main-text">Test</b> Admin
               </span>
               </a>
               <ul class="right hide-on-med-and-down">
                  <li class="active"><a href="/home">Dashboard</a></li>
                  <li class="profile ">
                  <a class="dropdown-button" data-activates="dropdown-profile" data-constrainwidth="false" data-beloworigin="true" data-alignment="right">
                     <div class="valign-wrapper">
                        {{ Auth::user()->name }}
                     <i class="material-icons dropdown-icon right">arrow_drop_down</i>
                     </div>
                  </a>
                  <ul id="dropdown-profile" class="dropdown-content">
                     <li><a href="/users/{{Auth::user()->id}}/edit" class="iframe">Profile</a></li>
                     <li><a href="/logout">Logout</a></li>
                  </ul>
               </li>
               </ul>
               <a href="#" data-activates="mobile-demo" class="button-collapse">
               <i class="material-icons">menu</i>
               </a>
            </div>
            <ul class="side-nav" id="mobile-demo" style="transform: translateX(-100%);">
               <li class="logo">
                  <p>
                     <b class="main-text">Test</b> Admin
                  </p>
               </li>
               <li>
                  <a href="/home" class="waves-effect">Dashboard</a>
               </li>
            </ul>
         </div>
      </div>
   </nav>
</div>

