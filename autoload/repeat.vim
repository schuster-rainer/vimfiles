
  

  


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
        <title>autoload/repeat.vim at master from tpope's vim-repeat - GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="http://github.com/fluidicon.png" title="GitHub" />

    <link href="http://assets3.github.com/stylesheets/bundle_common.css?05110c23efe3df8234b1145740f221b7862ffb84" media="screen" rel="stylesheet" type="text/css" />
<link href="http://assets3.github.com/stylesheets/bundle_github.css?05110c23efe3df8234b1145740f221b7862ffb84" media="screen" rel="stylesheet" type="text/css" />

    <script type="text/javascript" charset="utf-8">
      var GitHub = {}
      var github_user = 'schuster-rainer'
      
    </script>
    <script src="http://assets1.github.com/javascripts/jquery/jquery-1.4.2.min.js?05110c23efe3df8234b1145740f221b7862ffb84" type="text/javascript"></script>
    <script src="http://assets1.github.com/javascripts/bundle_common.js?05110c23efe3df8234b1145740f221b7862ffb84" type="text/javascript"></script>
<script src="http://assets2.github.com/javascripts/bundle_github.js?05110c23efe3df8234b1145740f221b7862ffb84" type="text/javascript"></script>

        <script type="text/javascript" charset="utf-8">
      GitHub.spy({
        repo: "tpope/vim-repeat"
      })
    </script>

    
  
    
  

  <link href="http://github.com/tpope/vim-repeat/commits/master.atom" rel="alternate" title="Recent Commits to vim-repeat:master" type="application/atom+xml" />

        <meta name="description" content="repeat.vim: enable repeating supported plugin maps with &quot;.&quot;" />
    <script type="text/javascript">
      GitHub.nameWithOwner = GitHub.nameWithOwner || "tpope/vim-repeat";
      GitHub.currentRef = 'master';
    </script>
  

            <script type="text/javascript">
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-3769691-2']);
      _gaq.push(['_trackPageview']);
      (function() {
        var ga = document.createElement('script');
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        ga.setAttribute('async', 'true');
        document.documentElement.firstChild.appendChild(ga);
      })();
    </script>

  </head>

  

  <body class="logged_in ">
    

    
      <script type="text/javascript">
        var _kmq = _kmq || [];
        function _kms(u){
          var s = document.createElement('script'); var f = document.getElementsByTagName('script')[0]; s.type = 'text/javascript'; s.async = true;
          s.src = u; f.parentNode.insertBefore(s, f);
        }
        _kms('//i.kissmetrics.com/i.js');_kms('//doug1izaerwt3.cloudfront.net/406e8bf3a2b8846ead55afb3cfaf6664523e3a54.1.js');
      </script>
    

    

    

    
      <div id="site_alert">
        <form action="/translate?to=%2Ftpope%2Fvim-repeat%2Fblob%2Fmaster%2Fautoload%2Frepeat.vim" method="post"><div style="margin:0;padding:0"><input name="authenticity_token" type="hidden" value="7d3c2540d572a0612e09c324a81b6c457c0945db" /></div>        <p>
          Would you rather see this site in German? (Möchtest du GitHub lieber auf Deutsch sehen?) &nbsp;
          <button class="minibutton" name="code" value="de"><span>Yes (Ja)</span></button> &nbsp;
          <button class="minibutton" name="code" value="en"><span>No (Nein)</span></button>
        </p>
        </form>      </div>
    

    <div class="subnavd" id="main">
      <div id="header" class="true">
        
          <a class="logo boring" href="https://github.com/">
            <img src="/images/modules/header/logov3.png?changed" class="default" alt="github" />
            <![if !IE]>
            <img src="/images/modules/header/logov3-hover.png" class="hover" alt="github" />
            <![endif]>
          </a>
        
        
          






  
    <div class="userbox">
      <div class="avatarname">
        <a href="http://github.com/schuster-rainer"><img src="http://www.gravatar.com/avatar/34e84f15cc083aaf9931b8af419b6ed3?s=140&d=http%3A%2F%2Fgithub.com%2Fimages%2Fgravatars%2Fgravatar-140.png" alt="" width="20" height="20"  /></a>
        <a href="http://github.com/schuster-rainer" class="name">schuster-rainer</a>

        
        
      </div>
      <ul class="usernav">
        <li><a href="https://github.com/">Dashboard</a></li>
        <li>
          
          <a href="https://github.com/inbox">Inbox</a>
          <a href="https://github.com/inbox" class="unread_count ">0</a>
        </li>
        <li><a href="https://github.com/account">Account Settings</a></li>
                        <li><a href="/logout">Log Out</a></li>
      </ul>
    </div><!-- /.userbox -->
  


        
        <div class="topsearch">
  
    <form action="/search" id="top_search_form" method="get">
      <a href="/search" class="advanced-search tooltipped downwards" title="Advanced Search">Advanced Search</a>
      <input type="search" class="search my_repos_autocompleter" name="q" results="5" placeholder="Search&hellip;" /> <input type="submit" value="Search" class="button" />
      <input type="hidden" name="type" value="Everything" />
      <input type="hidden" name="repo" value="" />
      <input type="hidden" name="langOverride" value="" />
      <input type="hidden" name="start_value" value="1" />
    </form>
    <ul class="nav">
      <li><a href="/explore">Explore GitHub</a></li>
      <li><a href="http://gist.github.com">Gist</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="http://help.github.com">Help</a></li>
    </ul>
  
</div>

      </div>

      
      
        
    <div class="site">
      <div class="pagehead repohead vis-public   ">
        <h1>
          <a href="/tpope">tpope</a> / <strong><a href="http://github.com/tpope/vim-repeat">vim-repeat</a></strong>
          
          
        </h1>

        
    <ul class="actions">
      

      
        <li class="for-owner" style="display:none"><a href="https://github.com/tpope/vim-repeat/edit" class="minibutton btn-admin "><span><span class="icon"></span>Admin</span></a></li>
        <li>
          <a href="/tpope/vim-repeat/toggle_watch" class="minibutton btn-watch " id="watch_button" style="display:none"><span><span class="icon"></span>Watch</span></a>
          <a href="/tpope/vim-repeat/toggle_watch" class="minibutton btn-watch " id="unwatch_button" style="display:none"><span><span class="icon"></span>Unwatch</span></a>
        </li>
        
          
            <li class="for-notforked" style="display:none"><a href="/tpope/vim-repeat/fork" class="minibutton btn-fork " id="fork_button" onclick="var f = document.createElement('form'); f.style.display = 'none'; this.parentNode.appendChild(f); f.method = 'POST'; f.action = this.href;var s = document.createElement('input'); s.setAttribute('type', 'hidden'); s.setAttribute('name', 'authenticity_token'); s.setAttribute('value', '7d3c2540d572a0612e09c324a81b6c457c0945db'); f.appendChild(s);f.submit();return false;"><span><span class="icon"></span>Fork</span></a></li>
            <li class="for-hasfork" style="display:none"><a href="#" class="minibutton btn-fork " id="your_fork_button"><span><span class="icon"></span>Your Fork</span></a></li>
          

          
          <li id="pull_request_item" class='ospr' style="display:none"><a href="/tpope/vim-repeat/pull_request/" class="minibutton btn-pull-request "><span><span class="icon"></span>Pull Request</span></a></li>
          

          <li><a href="#" class="minibutton btn-download " id="download_button"><span><span class="icon"></span>Download Source</span></a></li>
        
      
      
      <li class="repostats">
        <ul class="repo-stats">
          <li class="watchers"><a href="/tpope/vim-repeat/watchers" title="Watchers" class="tooltipped downwards">31</a></li>
          <li class="forks"><a href="/tpope/vim-repeat/network" title="Forks" class="tooltipped downwards">3</a></li>
        </ul>
      </li>
    </ul>


        
  <ul class="tabs">
    <li><a href="http://github.com/tpope/vim-repeat/tree/master" class="selected" highlight="repo_source">Source</a></li>
    <li><a href="http://github.com/tpope/vim-repeat/commits/master" highlight="repo_commits">Commits</a></li>

    
    <li><a href="/tpope/vim-repeat/network" highlight="repo_network">Network (3)</a></li>

    

    
      
      <li><a href="/tpope/vim-repeat/issues" highlight="issues">Issues (0)</a></li>
    

    

  
    <li><a href="/tpope/vim-repeat/graphs" highlight="repo_graphs">Graphs</a></li>

    <li class="contextswitch nochoices">
      <span class="toggle leftwards" >
        <em>Branch:</em>
        <code>master</code>
      </span>
    </li>
  </ul>

  <div style="display:none" id="pl-description"><p><em class="placeholder">click here to add a description</em></p></div>
  <div style="display:none" id="pl-homepage"><p><em class="placeholder">click here to add a homepage</em></p></div>

  <div class="subnav-bar">
  
  <ul>
    <li>
      <a href="#" class="dropdown">Switch Branches (1)</a>
      <ul>
        
          
            <li><strong>master &#x2713;</strong></li>
            
      </ul>
    </li>
    <li>
      <a href="#" class="dropdown ">Switch Tags (1)</a>
              <ul>
                      
              <li><a href="/tpope/vim-repeat/blob/v1.0/autoload/repeat.vim">v1.0</a></li>
            
                  </ul>
      
    </li>
    <li>
    
    <a href="/tpope/vim-repeat/branches" class="manage">Branch List</a>
    
    </li>
  </ul>
</div>

  
  
  
  
  
  



        
    <div id="repo_details" class="metabox clearfix">
      <div id="repo_details_loader" class="metabox-loader" style="display:none">Sending Request&hellip;</div>

      

      <div id="repository_description" rel="repository_description_edit">
        
          <p>repeat.vim: enable repeating supported plugin maps with &quot;.&quot;
            <span id="read_more" style="display:none">&mdash; <a href="#readme">Read more</a></span>
          </p>
        
      </div>
      <div id="repository_description_edit" style="display:none;" class="inline-edit">
        <form action="/tpope/vim-repeat/edit/update" method="post"><div style="margin:0;padding:0"><input name="authenticity_token" type="hidden" value="7d3c2540d572a0612e09c324a81b6c457c0945db" /></div>
          <input type="hidden" name="field" value="repository_description">
          <input type="text" class="textfield" name="value" value="repeat.vim: enable repeating supported plugin maps with &quot;.&quot;">
          <div class="form-actions">
            <button class="minibutton"><span>Save</span></button> &nbsp; <a href="#" class="cancel">Cancel</a>
          </div>
        </form>
      </div>

      
      <div class="repository-homepage" id="repository_homepage" rel="repository_homepage_edit">
        <p><a href="http://www.vim.org/scripts/script.php?script_id=2136" rel="nofollow">http://www.vim.org/scripts/script.php?script_id=2136</a></p>
      </div>
      <div id="repository_homepage_edit" style="display:none;" class="inline-edit">
        <form action="/tpope/vim-repeat/edit/update" method="post"><div style="margin:0;padding:0"><input name="authenticity_token" type="hidden" value="7d3c2540d572a0612e09c324a81b6c457c0945db" /></div>
          <input type="hidden" name="field" value="repository_homepage">
          <input type="text" class="textfield" name="value" value="http://www.vim.org/scripts/script.php?script_id=2136">
          <div class="form-actions">
            <button class="minibutton"><span>Save</span></button> &nbsp; <a href="#" class="cancel">Cancel</a>
          </div>
        </form>
      </div>

      <div class="rule "></div>

            <div id="url_box" class="url-box">
        <ul class="clone-urls">
          
            
            <li id="http_clone_url"><a href="http://github.com/tpope/vim-repeat.git" data-permissions="Read-Only">HTTP</a></li>
            <li id="public_clone_url"><a href="git://github.com/tpope/vim-repeat.git" data-permissions="Read-Only">Git Read-Only</a></li>
          
        </ul>
        <input type="text" spellcheck="false" id="url_field" class="url-field" />
              <span style="display:none" id="url_box_clippy"></span>
      <span id="clippy_tooltip_url_box_clippy" class="clippy-tooltip tooltipped" title="copy to clipboard">
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
              width="14"
              height="14"
              class="clippy"
              id="clippy" >
      <param name="movie" value="http://assets1.github.com/flash/clippy.swf?v5"/>
      <param name="allowScriptAccess" value="always" />
      <param name="quality" value="high" />
      <param name="scale" value="noscale" />
      <param NAME="FlashVars" value="id=url_box_clippy&amp;copied=&amp;copyto=">
      <param name="bgcolor" value="#FFFFFF">
      <param name="wmode" value="opaque">
      <embed src="http://assets1.github.com/flash/clippy.swf?v5"
             width="14"
             height="14"
             name="clippy"
             quality="high"
             allowScriptAccess="always"
             type="application/x-shockwave-flash"
             pluginspage="http://www.macromedia.com/go/getflashplayer"
             FlashVars="id=url_box_clippy&amp;copied=&amp;copyto="
             bgcolor="#FFFFFF"
             wmode="opaque"
      />
      </object>
      </span>

        <p id="url_description">This URL has <strong>Read+Write</strong> access</p>
      </div>
    </div>


        

      </div><!-- /.pagehead -->

      









<script type="text/javascript">
  GitHub.currentCommitRef = 'master'
  GitHub.currentRepoOwner = 'tpope'
  GitHub.currentRepo = "vim-repeat"
  GitHub.downloadRepo = '/tpope/vim-repeat/archives/master'

  
    GitHub.hasWriteAccess = false
    GitHub.hasAdminAccess = false
    GitHub.watchingRepo = false
    GitHub.ignoredRepo = false
    GitHub.hasForkOfRepo = ""
    GitHub.hasForked = false
  

  
</script>










  <div id="commit">
    <div class="group">
        
  <div class="envelope commit">
    <div class="human">
      
        <div class="message"><pre><a href="/tpope/vim-repeat/commit/c4101c205ef9e06bdfeff571a7dbba2576f08974">Initial commit</a> </pre></div>
      

      <div class="actor">
        <div class="gravatar">
          
          <img src="http://www.gravatar.com/avatar/67259dd09c53aef920fe2aca18c7a8e0?s=140&d=http%3A%2F%2Fgithub.com%2Fimages%2Fgravatars%2Fgravatar-140.png" alt="" width="30" height="30"  />
        </div>
        <div class="name"><a href="/tpope">tpope</a> <span>(author)</span></div>
        <div class="date">
          <abbr class="relatize" title="2008-04-25 15:24:17">Fri Apr 25 15:24:17 -0700 2008</abbr>
        </div>
      </div>

      

    </div>
    <div class="machine">
      <span>c</span>ommit&nbsp;&nbsp;<a href="/tpope/vim-repeat/commit/c4101c205ef9e06bdfeff571a7dbba2576f08974" hotkey="c">c4101c205ef9e06bdfef</a><br />
      <span>t</span>ree&nbsp;&nbsp;&nbsp;&nbsp;<a href="/tpope/vim-repeat/tree/c4101c205ef9e06bdfeff571a7dbba2576f08974" hotkey="t">e73c90dd9e1500d6bbf8</a><br />
      

    </div>
  </div>

    </div>
  </div>



  
    <div id="path">
      <b><a href="/tpope/vim-repeat/tree/master">vim-repeat</a></b> / <a href="/tpope/vim-repeat/tree/master/autoload">autoload</a> / repeat.vim       <span style="display:none" id="clippy_3333">autoload/repeat.vim</span>
      
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
              width="110"
              height="14"
              class="clippy"
              id="clippy" >
      <param name="movie" value="http://assets0.github.com/flash/clippy.swf?v5"/>
      <param name="allowScriptAccess" value="always" />
      <param name="quality" value="high" />
      <param name="scale" value="noscale" />
      <param NAME="FlashVars" value="id=clippy_3333&amp;copied=copied!&amp;copyto=copy to clipboard">
      <param name="bgcolor" value="#FFFFFF">
      <param name="wmode" value="opaque">
      <embed src="http://assets0.github.com/flash/clippy.swf?v5"
             width="110"
             height="14"
             name="clippy"
             quality="high"
             allowScriptAccess="always"
             type="application/x-shockwave-flash"
             pluginspage="http://www.macromedia.com/go/getflashplayer"
             FlashVars="id=clippy_3333&amp;copied=copied!&amp;copyto=copy to clipboard"
             bgcolor="#FFFFFF"
             wmode="opaque"
      />
      </object>
      

    </div>

    <div id="files">
      <div class="file">
        <div class="meta">
          <div class="info">
            <span class="icon"><img alt="Txt" height="16" src="http://assets2.github.com/images/icons/txt.png?d18b030b96c73150958b7d50c8f1c0f76c602814" width="16" /></span>
            <span class="mode" title="File Mode">100644</span>
            
              <span>73 lines (63 sloc)</span>
            
            <span>2.553 kb</span>
          </div>
          <ul class="actions">
            
              <li><a id="file-edit-link" href="#" rel="/tpope/vim-repeat/file-edit/__ref__/autoload/repeat.vim">edit</a></li>
            
            <li><a href="/tpope/vim-repeat/raw/master/autoload/repeat.vim" id="raw-url">raw</a></li>
            
              <li><a href="/tpope/vim-repeat/blame/master/autoload/repeat.vim">blame</a></li>
            
            <li><a href="/tpope/vim-repeat/commits/master/autoload/repeat.vim">history</a></li>
          </ul>
        </div>
        
  <div class="data syntax type-vim">
    
      <table cellpadding="0" cellspacing="0">
        <tr>
          <td>
            <pre class="line_numbers"><span id="LID1" rel="#L1">1</span>
<span id="LID2" rel="#L2">2</span>
<span id="LID3" rel="#L3">3</span>
<span id="LID4" rel="#L4">4</span>
<span id="LID5" rel="#L5">5</span>
<span id="LID6" rel="#L6">6</span>
<span id="LID7" rel="#L7">7</span>
<span id="LID8" rel="#L8">8</span>
<span id="LID9" rel="#L9">9</span>
<span id="LID10" rel="#L10">10</span>
<span id="LID11" rel="#L11">11</span>
<span id="LID12" rel="#L12">12</span>
<span id="LID13" rel="#L13">13</span>
<span id="LID14" rel="#L14">14</span>
<span id="LID15" rel="#L15">15</span>
<span id="LID16" rel="#L16">16</span>
<span id="LID17" rel="#L17">17</span>
<span id="LID18" rel="#L18">18</span>
<span id="LID19" rel="#L19">19</span>
<span id="LID20" rel="#L20">20</span>
<span id="LID21" rel="#L21">21</span>
<span id="LID22" rel="#L22">22</span>
<span id="LID23" rel="#L23">23</span>
<span id="LID24" rel="#L24">24</span>
<span id="LID25" rel="#L25">25</span>
<span id="LID26" rel="#L26">26</span>
<span id="LID27" rel="#L27">27</span>
<span id="LID28" rel="#L28">28</span>
<span id="LID29" rel="#L29">29</span>
<span id="LID30" rel="#L30">30</span>
<span id="LID31" rel="#L31">31</span>
<span id="LID32" rel="#L32">32</span>
<span id="LID33" rel="#L33">33</span>
<span id="LID34" rel="#L34">34</span>
<span id="LID35" rel="#L35">35</span>
<span id="LID36" rel="#L36">36</span>
<span id="LID37" rel="#L37">37</span>
<span id="LID38" rel="#L38">38</span>
<span id="LID39" rel="#L39">39</span>
<span id="LID40" rel="#L40">40</span>
<span id="LID41" rel="#L41">41</span>
<span id="LID42" rel="#L42">42</span>
<span id="LID43" rel="#L43">43</span>
<span id="LID44" rel="#L44">44</span>
<span id="LID45" rel="#L45">45</span>
<span id="LID46" rel="#L46">46</span>
<span id="LID47" rel="#L47">47</span>
<span id="LID48" rel="#L48">48</span>
<span id="LID49" rel="#L49">49</span>
<span id="LID50" rel="#L50">50</span>
<span id="LID51" rel="#L51">51</span>
<span id="LID52" rel="#L52">52</span>
<span id="LID53" rel="#L53">53</span>
<span id="LID54" rel="#L54">54</span>
<span id="LID55" rel="#L55">55</span>
<span id="LID56" rel="#L56">56</span>
<span id="LID57" rel="#L57">57</span>
<span id="LID58" rel="#L58">58</span>
<span id="LID59" rel="#L59">59</span>
<span id="LID60" rel="#L60">60</span>
<span id="LID61" rel="#L61">61</span>
<span id="LID62" rel="#L62">62</span>
<span id="LID63" rel="#L63">63</span>
<span id="LID64" rel="#L64">64</span>
<span id="LID65" rel="#L65">65</span>
<span id="LID66" rel="#L66">66</span>
<span id="LID67" rel="#L67">67</span>
<span id="LID68" rel="#L68">68</span>
<span id="LID69" rel="#L69">69</span>
<span id="LID70" rel="#L70">70</span>
<span id="LID71" rel="#L71">71</span>
<span id="LID72" rel="#L72">72</span>
<span id="LID73" rel="#L73">73</span>
</pre>
          </td>
          <td width="100%">
            
              <div class="highlight"><pre><div class='line' id='LC1'><span class="c">" repeat.vim - Let the repeat command repeat plugin maps</span></div><div class='line' id='LC2'><span class="c">" Maintainer:   Tim Pope</span></div><div class='line' id='LC3'><span class="c">" Version:      1.0</span></div><div class='line' id='LC4'><br/></div><div class='line' id='LC5'><span class="c">" Installation:</span></div><div class='line' id='LC6'><span class="c">" Place in either ~/.vim/plugin/repeat.vim (to load at start up) or</span></div><div class='line' id='LC7'><span class="c">" ~/.vim/autoload/repeat.vim (to load automatically as needed).</span></div><div class='line' id='LC8'><span class="c">"</span></div><div class='line' id='LC9'><span class="c">" Developers:</span></div><div class='line' id='LC10'><span class="c">" Basic usage is as follows:</span></div><div class='line' id='LC11'><span class="c">"</span></div><div class='line' id='LC12'><span class="c">"   silent! call repeat#set("\&lt;Plug&gt;MappingToRepeatCommand",3)</span></div><div class='line' id='LC13'><span class="c">"</span></div><div class='line' id='LC14'><span class="c">" The first argument is the mapping that will be invoked when the |.| key is</span></div><div class='line' id='LC15'><span class="c">" pressed.  Typically, it will be the same as the mapping the user invoked.</span></div><div class='line' id='LC16'><span class="c">" This sequence will be stuffed into the input queue literally.  Thus you must</span></div><div class='line' id='LC17'><span class="c">" encode special keys by prefixing them with a backslash inside double quotes.</span></div><div class='line' id='LC18'><span class="c">"</span></div><div class='line' id='LC19'><span class="c">" The second argument is the default count.  This is the number that will be</span></div><div class='line' id='LC20'><span class="c">" prefixed to the mapping if no explicit numeric argument was given.  The</span></div><div class='line' id='LC21'><span class="c">" value of the v:count variable is usually correct and it will be used if the</span></div><div class='line' id='LC22'><span class="c">" second parameter is omitted.  If your mapping doesn&#39;t accept a numeric</span></div><div class='line' id='LC23'><span class="c">" argument and you never want to receive one, pass a value of -1.</span></div><div class='line' id='LC24'><span class="c">"</span></div><div class='line' id='LC25'><span class="c">" Make sure to call the repeat#set function _after_ making changes to the</span></div><div class='line' id='LC26'><span class="c">" file.</span></div><div class='line' id='LC27'><br/></div><div class='line' id='LC28'><span class="k">if</span> exists<span class="p">(</span><span class="s2">"g:loaded_repeat"</span><span class="p">)</span> <span class="p">||</span> &amp;<span class="k">cp</span> <span class="p">||</span> v:version <span class="p">&lt;</span> <span class="m">700</span></div><div class='line' id='LC29'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">finish</span></div><div class='line' id='LC30'><span class="k">endif</span></div><div class='line' id='LC31'><span class="k">let</span> g:loaded_repeat <span class="p">=</span> <span class="m">1</span></div><div class='line' id='LC32'><br/></div><div class='line' id='LC33'><span class="k">let</span> g:repeat_tick <span class="p">=</span> <span class="m">-1</span></div><div class='line' id='LC34'><br/></div><div class='line' id='LC35'><span class="k">function</span><span class="p">!</span> repeat#<span class="k">set</span><span class="p">(</span>sequence<span class="p">,</span>...<span class="p">)</span></div><div class='line' id='LC36'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">silent</span> exe <span class="c">"norm! \"=&#39;&#39;\&lt;CR&gt;p"</span></div><div class='line' id='LC37'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> g:repeat_sequence <span class="p">=</span> a:sequence</div><div class='line' id='LC38'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> g:repeat_count <span class="p">=</span> a:<span class="m">0</span> ? a:<span class="m">1</span> : v:count</div><div class='line' id='LC39'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> g:repeat_tick <span class="p">=</span> <span class="k">b</span>:changedtick</div><div class='line' id='LC40'><span class="k">endfunction</span></div><div class='line' id='LC41'><br/></div><div class='line' id='LC42'><span class="k">function</span><span class="p">!</span> s:repeat<span class="p">(</span>count<span class="p">)</span></div><div class='line' id='LC43'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> g:repeat_tick <span class="p">==</span> <span class="k">b</span>:changedtick</div><div class='line' id='LC44'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> <span class="k">c</span> <span class="p">=</span> g:repeat_count</div><div class='line' id='LC45'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> s <span class="p">=</span> g:repeat_sequence</div><div class='line' id='LC46'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> cnt <span class="p">=</span> <span class="k">c</span> <span class="p">==</span> <span class="m">-1</span> ? <span class="c">"" : (a:count ? a:count : (c ? c : &#39;&#39;))</span></div><div class='line' id='LC47'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">call</span> feedkeys<span class="p">(</span>cnt . s<span class="p">)</span></div><div class='line' id='LC48'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC49'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">call</span> feedkeys<span class="p">((</span>a:count ? a:count : <span class="s1">&#39;&#39;</span><span class="p">)</span> . <span class="s1">&#39;.&#39;</span><span class="p">,</span> <span class="s1">&#39;n&#39;</span><span class="p">)</span></div><div class='line' id='LC50'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">endif</span></div><div class='line' id='LC51'><span class="k">endfunction</span></div><div class='line' id='LC52'><br/></div><div class='line' id='LC53'><span class="k">function</span><span class="p">!</span> s:<span class="nb">wrap</span><span class="p">(</span>command<span class="p">,</span>count<span class="p">)</span></div><div class='line' id='LC54'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> <span class="k">preserve</span> <span class="p">=</span> <span class="p">(</span>g:repeat_tick <span class="p">==</span> <span class="k">b</span>:changedtick<span class="p">)</span></div><div class='line' id='LC55'>&nbsp;&nbsp;&nbsp;&nbsp;exe <span class="s1">&#39;norm! &#39;</span>.<span class="p">(</span>a:count ? a:count : <span class="s1">&#39;&#39;</span><span class="p">)</span>.a:command</div><div class='line' id='LC56'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="k">preserve</span></div><div class='line' id='LC57'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> g:repeat_tick <span class="p">=</span> <span class="k">b</span>:changedtick</div><div class='line' id='LC58'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">endif</span></div><div class='line' id='LC59'><span class="k">endfunction</span></div><div class='line' id='LC60'><br/></div><div class='line' id='LC61'>nnoremap <span class="p">&lt;</span><span class="k">silent</span><span class="p">&gt;</span> .     :<span class="p">&lt;</span>C<span class="p">-</span>U<span class="p">&gt;</span><span class="k">call</span> <span class="p">&lt;</span>SID<span class="p">&gt;</span>repeat<span class="p">(</span>v:count<span class="p">)&lt;</span>CR<span class="p">&gt;</span></div><div class='line' id='LC62'>nnoremap <span class="p">&lt;</span><span class="k">silent</span><span class="p">&gt;</span> <span class="k">u</span>     :<span class="p">&lt;</span>C<span class="p">-</span>U<span class="p">&gt;</span><span class="k">call</span> <span class="p">&lt;</span>SID<span class="p">&gt;</span><span class="nb">wrap</span><span class="p">(</span><span class="s1">&#39;u&#39;</span><span class="p">,</span>v:count<span class="p">)&lt;</span>CR<span class="p">&gt;</span></div><div class='line' id='LC63'>nnoremap <span class="p">&lt;</span><span class="k">silent</span><span class="p">&gt;</span> U     :<span class="p">&lt;</span>C<span class="p">-</span>U<span class="p">&gt;</span><span class="k">call</span> <span class="p">&lt;</span>SID<span class="p">&gt;</span><span class="nb">wrap</span><span class="p">(</span><span class="s1">&#39;U&#39;</span><span class="p">,</span>v:count<span class="p">)&lt;</span>CR<span class="p">&gt;</span></div><div class='line' id='LC64'>nnoremap <span class="p">&lt;</span><span class="k">silent</span><span class="p">&gt;</span> <span class="p">&lt;</span>C<span class="p">-</span>R<span class="p">&gt;</span> :<span class="p">&lt;</span>C<span class="p">-</span>U<span class="p">&gt;</span><span class="k">call</span> <span class="p">&lt;</span>SID<span class="p">&gt;</span><span class="nb">wrap</span><span class="p">(</span><span class="s2">"\&lt;Lt&gt;C-R&gt;"</span><span class="p">,</span>v:count<span class="p">)&lt;</span>CR<span class="p">&gt;</span></div><div class='line' id='LC65'><br/></div><div class='line' id='LC66'>augroup repeatPlugin</div><div class='line' id='LC67'>&nbsp;&nbsp;&nbsp;&nbsp;autocmd<span class="p">!</span></div><div class='line' id='LC68'>&nbsp;&nbsp;&nbsp;&nbsp;autocmd <span class="nb">BufLeave</span><span class="p">,</span><span class="nb">BufWritePre</span><span class="p">,</span><span class="nb">BufReadPre</span> * <span class="k">let</span> g:repeat_tick <span class="p">=</span> <span class="p">(</span>g:repeat_tick <span class="p">==</span> <span class="k">b</span>:changedtick <span class="p">||</span> g:repeat_tick <span class="p">==</span> <span class="m">0</span><span class="p">)</span> ? <span class="m">0</span> : <span class="m">-1</span></div><div class='line' id='LC69'>&nbsp;&nbsp;&nbsp;&nbsp;autocmd <span class="nb">BufEnter</span><span class="p">,</span><span class="nb">BufWritePost</span> * <span class="k">if</span> g:repeat_tick <span class="p">==</span> <span class="m">0</span><span class="p">|</span><span class="k">let</span> g:repeat_tick <span class="p">=</span> <span class="k">b</span>:changedtick<span class="p">|</span><span class="k">endif</span></div><div class='line' id='LC70'>augroup END</div><div class='line' id='LC71'><br/></div><div class='line' id='LC72'><span class="c">" vim:set ft=vim et sw=4 sts=4:</span></div><div class='line' id='LC73'><br/></div></pre></div>
            
          </td>
        </tr>
      </table>
    
  </div>


      </div>
    </div>

  


    </div>
  
      
    </div>

    <div id="footer" class="clearfix">
      <div class="site">
        <div class="sponsor">
          <a href="http://www.rackspace.com" class="logo">
            <img alt="Dedicated Server" src="http://assets2.github.com/images/modules/footer/rackspace_logo.png?05110c23efe3df8234b1145740f221b7862ffb84" />
          </a>
          Powered by the <a href="http://www.rackspace.com ">Dedicated
          Servers</a> and<br/> <a href="http://www.rackspacecloud.com">Cloud
          Computing</a> of Rackspace Hosting<span>&reg;</span>
        </div>

        <ul class="links">
          <li class="blog"><a href="http://github.com/blog">Blog</a></li>
          <li><a href="http://support.github.com?sso=_-D9qfwBNALVWtVhGCwVCzX3G3akBoO36XQ8M-kMER3mItaw2V5DpBTBMMTZiae4IktYOwXI2fiaZIfTYQYPaX6ZPpoSdw2GpCPuJT8TLQaBw0kfgllfQRZ_7vnMLuZl8Zwu_mqmDN2PF01b4Hv3Tj-ur0SVpQ3bJKw51zKDONfdaJ4lHzPNYj_Mz4nHfzWs0wIEiktoCzO3noLfDmHhg9iz6EM4QEfSs8CyttHg3AUGB4sXSDi7XscxSWpCkC8R">Support</a></li>
          <li><a href="http://github.com/training">Training</a></li>
          <li><a href="http://jobs.github.com">Job Board</a></li>
          <li><a href="http://github.com/contact">Contact</a></li>
          <li><a href="http://develop.github.com">API</a></li>
          <li><a href="http://status.github.com">Status</a></li>
        </ul>
        <ul class="sosueme">
          <li class="main">&copy; 2010 <span id="_rrt" title="0.05999s from fe4.rs.github.com">GitHub</span> Inc. All rights reserved.</li>
          <li><a href="/site/terms">Terms of Service</a></li>
          <li><a href="/site/privacy">Privacy</a></li>
          <li><a href="http://github.com/security">Security</a></li>
        </ul>
      </div>
    </div><!-- /#footer -->

    
      
      
        <!-- current locale:  -->
        <div class="locales">
          <div class="site">

            <ul class="choices clearfix limited-locales">
              <li><span class="current">English</span></li>
              
                
                  <li><a rel="nofollow" href="?locale=de">Deutsch</a></li>
                
              
                
                  <li><a rel="nofollow" href="?locale=fr">Français</a></li>
                
              
                
                  <li><a rel="nofollow" href="?locale=ja">日本語</a></li>
                
              
                
                  <li><a rel="nofollow" href="?locale=pt-BR">Português (BR)</a></li>
                
              
                
                  <li><a rel="nofollow" href="?locale=zh">中文</a></li>
                
              
              <li class="all"><a href="#" class="minibutton btn-forward js-all-locales"><span><span class="icon"></span>See all available languages</span></a></li>
            </ul>

            <div class="all-locales clearfix">
              <h3>Your current locale selection: <strong>English</strong>. Choose another?</h3>
              
              
                <ul class="choices">
                  
                    
                      <li><a rel="nofollow" href="?locale=en">English</a></li>
                    
                  
                    
                      <li><a rel="nofollow" href="?locale=af">Afrikaans</a></li>
                    
                  
                    
                      <li><a rel="nofollow" href="?locale=ca">Català</a></li>
                    
                  
                    
                      <li><a rel="nofollow" href="?locale=cs">Čeština</a></li>
                    
                  
                </ul>
              
                <ul class="choices">
                  
                    
                      <li><a rel="nofollow" href="?locale=de">Deutsch</a></li>
                    
                  
                    
                      <li><a rel="nofollow" href="?locale=es">Español</a></li>
                    
                  
                    
                      <li><a rel="nofollow" href="?locale=fr">Français</a></li>
                    
                  
                    
                      <li><a rel="nofollow" href="?locale=hr">Hrvatski</a></li>
                    
                  
                </ul>
              
                <ul class="choices">
                  
                    
                      <li><a rel="nofollow" href="?locale=id">Indonesia</a></li>
                    
                  
                    
                      <li><a rel="nofollow" href="?locale=it">Italiano</a></li>
                    
                  
                    
                      <li><a rel="nofollow" href="?locale=ja">日本語</a></li>
                    
                  
                    
                      <li><a rel="nofollow" href="?locale=nl">Nederlands</a></li>
                    
                  
                </ul>
              
                <ul class="choices">
                  
                    
                      <li><a rel="nofollow" href="?locale=no">Norsk</a></li>
                    
                  
                    
                      <li><a rel="nofollow" href="?locale=pl">Polski</a></li>
                    
                  
                    
                      <li><a rel="nofollow" href="?locale=pt-BR">Português (BR)</a></li>
                    
                  
                    
                      <li><a rel="nofollow" href="?locale=sr">Српски</a></li>
                    
                  
                </ul>
              
                <ul class="choices">
                  
                    
                      <li><a rel="nofollow" href="?locale=sv">Svenska</a></li>
                    
                  
                    
                      <li><a rel="nofollow" href="?locale=zh">中文</a></li>
                    
                  
                </ul>
              
            </div>

          </div>
          <div class="fade"></div>
        </div>
      
    

    <script>window._auth_token = "7d3c2540d572a0612e09c324a81b6c457c0945db"</script>
    

    <!--[if IE 8]>
    <script type="text/javascript" charset="utf-8">
      $(document.body).addClass("ie8")
    </script>
    <![endif]-->

    <!--[if IE 7]>
    <script type="text/javascript" charset="utf-8">
      $(document.body).addClass("ie7")
    </script>
    <![endif]-->

    <script type="text/javascript">
      _kmq.push(['trackClick', 'entice_banner_link', 'Entice banner clicked']);
      
    </script>
    
  </body>
</html>

