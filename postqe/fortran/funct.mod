<!DOCTYPE html>
<html lang="en">
<head prefix="og: http://ogp.me/ns#">
<meta charset="utf-8">
<meta content="IE=edge" http-equiv="X-UA-Compatible">
<meta content="object" property="og:type">
<meta content="GitLab" property="og:site_name">
<meta content="postqe/fortranmodules2/funct.mod · postqe-ase · Davide Brunato / postqe" property="og:title">
<meta content="Post Processing for Quantum Espresso" property="og:description">
<meta content="https://git-scm.sissa.it/assets/gitlab_logo-7ae504fe4f68fdebb3c2034e36621930cd36ea87924c11ff65dbcb8ed50dca58.png" property="og:image">
<meta content="https://git-scm.sissa.it/brunato/postqe/blob/postqe-ase/postqe/fortranmodules2/funct.mod" property="og:url">
<meta content="summary" property="twitter:card">
<meta content="postqe/fortranmodules2/funct.mod · postqe-ase · Davide Brunato / postqe" property="twitter:title">
<meta content="Post Processing for Quantum Espresso" property="twitter:description">
<meta content="https://git-scm.sissa.it/assets/gitlab_logo-7ae504fe4f68fdebb3c2034e36621930cd36ea87924c11ff65dbcb8ed50dca58.png" property="twitter:image">

<title>postqe/fortranmodules2/funct.mod · postqe-ase · Davide Brunato / postqe · GitLab</title>
<meta content="Post Processing for Quantum Espresso" name="description">
<link rel="shortcut icon" type="image/x-icon" href="/assets/favicon-075eba76312e8421991a0c1f89a89ee81678bcde72319dd3e8047e2a47cd3a42.ico" />
<link rel="stylesheet" media="all" href="/assets/application-bd9d293e969f38ca2244b3240b186c94e506679264d890ae138ad437cee657f7.css" />
<link rel="stylesheet" media="print" href="/assets/print-68eed6d8135d858318821e790e25da27b2b4b9b8dbb1993fa6765d8e2e3e16ee.css" />
<script src="/assets/application-469d27d846a2a2399f1b9d88a2225c281be2a081fa446db231c4eb4cf70ac81c.js"></script>
<meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="8OM0TTDHCVCbwj08+NOlq4dHYUaucvmWwp4lgQUDL8p5qCcXLNTsx8Blj7xExR3Z2V86r/ba6xXvwc6DJbtp3w==" />
<meta content="origin-when-cross-origin" name="referrer">
<meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
<meta content="#474D57" name="theme-color">
<link rel="apple-touch-icon" type="image/x-icon" href="/assets/touch-icon-iphone-5a9cee0e8a51212e70b90c87c12f382c428870c0ff67d1eb034d884b78d2dae7.png" />
<link rel="apple-touch-icon" type="image/x-icon" href="/assets/touch-icon-ipad-a6eec6aeb9da138e507593b464fdac213047e49d3093fc30e90d9a995df83ba3.png" sizes="76x76" />
<link rel="apple-touch-icon" type="image/x-icon" href="/assets/touch-icon-iphone-retina-72e2aadf86513a56e050e7f0f2355deaa19cc17ed97bbe5147847f2748e5a3e3.png" sizes="120x120" />
<link rel="apple-touch-icon" type="image/x-icon" href="/assets/touch-icon-ipad-retina-8ebe416f5313483d9c1bc772b5bbe03ecad52a54eba443e5215a22caed2a16a2.png" sizes="152x152" />
<link color="rgb(226, 67, 41)" href="/assets/logo-d36b5212042cebc89b96df4bf6ac24e43db316143e89926c0db839ff694d2de4.svg" rel="mask-icon">
<meta content="/assets/msapplication-tile-1196ec67452f618d39cdd85e2e3a542f76574c071051ae7effbfde01710eb17d.png" name="msapplication-TileImage">
<meta content="#30353E" name="msapplication-TileColor">




<style>
  [data-user-is] {
    display: none !important;
  }
  
  [data-user-is="7"] {
    display: block !important;
  }
  
  [data-user-is="7"][data-display="inline"] {
    display: inline !important;
  }
  
  [data-user-is-not] {
    display: block !important;
  }
  
  [data-user-is-not][data-display="inline"] {
    display: inline !important;
  }
  
  [data-user-is-not="7"] {
    display: none !important;
  }
</style>

</head>

<body class="ui_charcoal" data-group="" data-page="projects:blob:show" data-project="postqe">
<script>
//<![CDATA[
window.gon={};gon.api_version="v3";gon.default_avatar_url="https://git-scm.sissa.it/assets/no_avatar-849f9c04a3a0d0cea2424ae97b27447dc64a7dbfae83c036c45b403392f0e8ba.png";gon.max_file_size=10;gon.relative_url_root="";gon.shortcuts_path="/help/shortcuts";gon.user_color_scheme="white";gon.award_menu_url="/emojis";gon.current_user_id=7;gon.api_token="V6JAFxL-yaN49wX6uwCT";
//]]>
</script>
<script>
  window.project_uploads_path = "/brunato/postqe/uploads";
  window.markdown_preview_path = "/brunato/postqe/markdown_preview";
</script>

<header class="header-collapsed navbar navbar-fixed-top navbar-gitlab with-horizontal-nav">
<div class="container-fluid">
<div class="header-content">
<button aria-label="Toggle global navigation" class="side-nav-toggle" type="button">
<span class="sr-only">Toggle navigation</span>
<i class="fa fa-bars"></i>
</button>
<button class="navbar-toggle" type="button">
<span class="sr-only">Toggle navigation</span>
<i class="fa fa-ellipsis-v"></i>
</button>
<div class="navbar-collapse collapse">
<ul class="nav navbar-nav">
<li class="hidden-sm hidden-xs">
<div class="has-location-badge search search-form">
<form class="navbar-form" action="/search" accept-charset="UTF-8" method="get"><input name="utf8" type="hidden" value="&#x2713;" /><div class="search-input-container">
<div class="location-badge">This project</div>
<div class="search-input-wrap">
<div class="dropdown" data-url="/search/autocomplete">
<input type="search" name="search" id="search" placeholder="Search" class="search-input dropdown-menu-toggle" spellcheck="false" tabindex="1" autocomplete="off" data-toggle="dropdown" />
<div class="dropdown-menu dropdown-select">
<div class="dropdown-content"><ul>
<li>
<a class="is-focused dropdown-menu-empty-link">
Loading...
</a>
</li>
</ul>
</div><div class="dropdown-loading"><i class="fa fa-spinner fa-spin"></i></div>
</div>
<i class="search-icon"></i>
<i class="clear-icon js-clear-input"></i>
</div>
</div>
</div>
<input type="hidden" name="group_id" id="group_id" />
<input type="hidden" name="project_id" id="search_project_id" value="48" />
<input type="hidden" name="search_code" id="search_code" value="true" />
<script>
  gl.projectOptions = gl.projectOptions || {};
  gl.projectOptions["postqe"] = {
    issuesPath: "/brunato/postqe/issues",
    mrPath: "/brunato/postqe/merge_requests",
    name: "postqe"
  };
</script>
<script>
  gl.dashboardOptions = {
    issuesPath: "https://git-scm.sissa.it/dashboard/issues",
    mrPath: "https://git-scm.sissa.it/dashboard/merge_requests"
  };
</script>
<input type="hidden" name="repository_ref" id="repository_ref" value="postqe-ase" />

<div class="search-autocomplete-opts hide" data-autocomplete-path="/search/autocomplete" data-autocomplete-project-id="48" data-autocomplete-project-ref="postqe-ase"></div>
</form></div>

</li>
<li class="visible-sm visible-xs">
<a title="Search" aria-label="Search" data-toggle="tooltip" data-placement="bottom" data-container="body" href="/search"><i class="fa fa-search"></i>
</a></li>
<li>
<a title="Admin Area" aria-label="Admin Area" data-toggle="tooltip" data-placement="bottom" data-container="body" href="/admin"><i class="fa fa-wrench fa-fw"></i>
</a></li>
<li>
<a title="Todos" aria-label="Todos" data-toggle="tooltip" data-placement="bottom" data-container="body" href="/dashboard/todos"><i class="fa fa-bell fa-fw"></i>
<span class="badge hidden todos-pending-count">
0
</span>
</a></li>
<li>
<a title="New project" aria-label="New project" data-toggle="tooltip" data-placement="bottom" data-container="body" href="/projects/new"><i class="fa fa-plus fa-fw"></i>
</a></li>
<li class="header-user dropdown">
<a class="header-user-dropdown-toggle" data-toggle="dropdown" href="/u/brunato"><img width="26" height="26" class="header-user-avatar" src="https://secure.gravatar.com/avatar/822a3caaf226c80aeb79f2c7265c6f0d?s=52&amp;d=identicon" alt="822a3caaf226c80aeb79f2c7265c6f0d?s=52&amp;d=identicon" />
<span class="caret"></span>
</a><div class="dropdown-menu-nav dropdown-menu-align-right">
<ul>
<li>
<a class="profile-link" aria-label="Profile" data-user="brunato" href="/u/brunato">Profile</a>
</li>
<li>
<a aria-label="Profile Settings" href="/profile">Profile Settings</a>
</li>
<li class="divider"></li>
<li>
<a class="sign-out-link" aria-label="Sign out" rel="nofollow" data-method="delete" href="/users/sign_out">Sign out</a>
</li>
</ul>
</div>
</li>
</ul>
</div>
<h1 class="title"><a href="/u/brunato">Davide Brunato</a> / <a class="project-item-select-holder" href="/brunato/postqe">postqe</a><i aria-label="Toggle switch project dropdown" data-target=".js-dropdown-menu-projects" data-toggle="dropdown" class="fa fa-chevron-down dropdown-toggle-caret js-projects-dropdown-toggle"></i></h1>
<div class="header-logo">
<a class="home" title="Dashboard" id="logo" href="/"><svg width="36" height="36" id="tanuki-logo">
  <path id="tanuki-right-ear" class="tanuki-shape" fill="#e24329" d="M2 14l9.38 9v-9l-4-12.28c-.205-.632-1.176-.632-1.38 0z"/>
  <path id="tanuki-left-ear" class="tanuki-shape" fill="#e24329" d="M34 14l-9.38 9v-9l4-12.28c.205-.632 1.176-.632 1.38 0z"/>
  <path id="tanuki-nose" class="tanuki-shape" fill="#e24329" d="M18,34.38 3,14 33,14 Z"/>
  <path id="tanuki-right-eye" class="tanuki-shape" fill="#fc6d26" d="M18,34.38 11.38,14 2,14 6,25Z"/>
  <path id="tanuki-left-eye" class="tanuki-shape" fill="#fc6d26" d="M18,34.38 24.62,14 34,14 30,25Z"/>
  <path id="tanuki-right-cheek" class="tanuki-shape" fill="#fca326" d="M2 14L.1 20.16c-.18.565 0 1.2.5 1.56l17.42 12.66z"/>
  <path id="tanuki-left-cheek" class="tanuki-shape" fill="#fca326" d="M34 14l1.9 6.16c.18.565 0 1.2-.5 1.56L18 34.38z"/>
</svg>

</a></div>
<div class="js-dropdown-menu-projects">
<div class="dropdown-menu dropdown-select dropdown-menu-projects">
<div class="dropdown-title"><span>Go to a project</span><button class="dropdown-title-button dropdown-menu-close" aria-label="Close" type="button"><i class="fa fa-times dropdown-menu-close-icon"></i></button></div>
<div class="dropdown-input"><input type="search" id="" class="dropdown-input-field" placeholder="Search your projects" autocomplete="off" /><i class="fa fa-search dropdown-input-search"></i><i role="button" class="fa fa-times dropdown-input-clear js-dropdown-input-clear"></i></div>
<div class="dropdown-content"></div>
<div class="dropdown-loading"><i class="fa fa-spinner fa-spin"></i></div>
</div>
</div>

</div>
</div>
</header>

<script>
  var findFileURL = "/brunato/postqe/find_file/postqe-ase";
</script>

<div class="page-sidebar-collapsed page-with-sidebar">
<div class="nicescroll sidebar-expanded sidebar-wrapper">
<div class="sidebar-action-buttons">
<a class="nav-header-btn toggle-nav-collapse" title="Open/Close" href="#"><span class="sr-only">Toggle navigation</span>
<i class="fa fa-bars"></i>
</a><a class="nav-header-btn pin-nav-btn has-tooltip  js-nav-pin" title="Pin Navigation" data-placement="right" data-container="body" href="#"><span class="sr-only">Toggle navigation pinning</span>
<i class="fa fa-fw fa-thumb-tack"></i>
</a></div>
<ul class="nav nav-sidebar">
<li class="active home"><a title="Projects" class="dashboard-shortcuts-projects" href="/dashboard/projects"><span>
Projects
</span>
</a></li><li class=""><a title="Todos" href="/dashboard/todos"><span>
Todos
<span class="count">0</span>
</span>
</a></li><li class=""><a class="dashboard-shortcuts-activity" title="Activity" href="/dashboard/activity"><span>
Activity
</span>
</a></li><li class=""><a title="Groups" href="/dashboard/groups"><span>
Groups
</span>
</a></li><li class=""><a title="Milestones" href="/dashboard/milestones"><span>
Milestones
</span>
</a></li><li class=""><a title="Issues" class="dashboard-shortcuts-issues" href="/dashboard/issues?assignee_id=7"><span>
Issues
<span class="count">11</span>
</span>
</a></li><li class=""><a title="Merge Requests" class="dashboard-shortcuts-merge_requests" href="/dashboard/merge_requests?assignee_id=7"><span>
Merge Requests
<span class="count">0</span>
</span>
</a></li><li class=""><a title="Snippets" href="/dashboard/snippets"><span>
Snippets
</span>
</a></li><li class=""><a title="Help" href="/help"><span>
Help
</span>
</a></li><li class=""><a title="Profile Settings" data-placement="bottom" href="/profile"><span>
Profile Settings
</span>
</a></li></ul>

</div>
<div class="layout-nav">
<div class="container-fluid">
<div class="controls">
<div class="dropdown project-settings-dropdown">
<a class="dropdown-new btn btn-default" data-toggle="dropdown" href="#" id="project-settings-button">
<i class="fa fa-cog"></i>
<i class="fa fa-caret-down"></i>
</a>
<ul class="dropdown-menu dropdown-menu-align-right">
<li class=""><a title="Members" class="team-tab tab" href="/brunato/postqe/project_members"><span>
Members
</span>
</a></li><li class=""><a title="Groups" href="/brunato/postqe/group_links"><span>
Groups
</span>
</a></li><li class=""><a title="Deploy Keys" href="/brunato/postqe/deploy_keys"><span>
Deploy Keys
</span>
</a></li><li class=""><a title="Webhooks" href="/brunato/postqe/hooks"><span>
Webhooks
</span>
</a></li><li class=""><a title="Services" href="/brunato/postqe/services"><span>
Services
</span>
</a></li><li class=""><a title="Protected Branches" href="/brunato/postqe/protected_branches"><span>
Protected Branches
</span>
</a></li><li class=""><a title="Runners" href="/brunato/postqe/runners"><span>
Runners
</span>
</a></li><li class=""><a title="Variables" href="/brunato/postqe/variables"><span>
Variables
</span>
</a></li><li class=""><a title="Triggers" href="/brunato/postqe/triggers"><span>
Triggers
</span>
</a></li><li class=""><a title="CI/CD Pipelines" href="/brunato/postqe/pipelines/settings"><span>
CI/CD Pipelines
</span>
</a></li>
<li class="divider"></li>
<li>
<a href="/brunato/postqe/edit">Edit Project
</a></li>
</ul>
</div>
</div>
<div class="nav-control scrolling-tabs-container">
<div class="fade-left">
<i class="fa fa-angle-left"></i>
</div>
<div class="fade-right">
<i class="fa fa-angle-right"></i>
</div>
<ul class="nav-links scrolling-tabs">
<li class="home"><a title="Project" class="shortcuts-project" href="/brunato/postqe"><span>
Project
</span>
</a></li><li class=""><a title="Activity" class="shortcuts-project-activity" href="/brunato/postqe/activity"><span>
Activity
</span>
</a></li><li class="active"><a title="Repository" class="shortcuts-tree" href="/brunato/postqe/tree/postqe-ase"><span>
Repository
</span>
</a></li><li class=""><a title="Pipelines" class="shortcuts-pipelines" href="/brunato/postqe/pipelines"><span>
Pipelines
</span>
</a></li><li class=""><a title="Graphs" class="shortcuts-graphs" href="/brunato/postqe/graphs/postqe-ase"><span>
Graphs
</span>
</a></li><li class=""><a title="Issues" class="shortcuts-issues" href="/brunato/postqe/issues"><span>
Issues
<span class="badge count issue_counter">0</span>
</span>
</a></li><li class=""><a title="Merge Requests" class="shortcuts-merge_requests" href="/brunato/postqe/merge_requests"><span>
Merge Requests
<span class="badge count merge_counter">0</span>
</span>
</a></li><li class=""><a title="Wiki" class="shortcuts-wiki" href="/brunato/postqe/wikis/home"><span>
Wiki
</span>
</a></li><li class="hidden">
<a title="Network" class="shortcuts-network" href="/brunato/postqe/network/postqe-ase">Network
</a></li>
<li class="hidden">
<a class="shortcuts-new-issue" href="/brunato/postqe/issues/new">Create a new issue
</a></li>
<li class="hidden">
<a title="Builds" class="shortcuts-builds" href="/brunato/postqe/builds">Builds
</a></li>
<li class="hidden">
<a title="Commits" class="shortcuts-commits" href="/brunato/postqe/commits/postqe-ase">Commits
</a></li>
</ul>
</div>

</div>
</div>
<div class="content-wrapper page-with-layout-nav">


<div class="flash-container flash-container-page">
</div>


<div class="">
<div class="content">
<div class="clearfix">
<div class="scrolling-tabs-container sub-nav-scroll">
<div class="fade-left">
<i class="fa fa-angle-left"></i>
</div>
<div class="fade-right">
<i class="fa fa-angle-right"></i>
</div>
<div class="nav-links sub-nav scrolling-tabs">
<ul class="container-fluid container-limited">
<li class="active"><a href="/brunato/postqe/tree/postqe-ase">Files
</a></li><li class=""><a href="/brunato/postqe/commits/postqe-ase">Commits
</a></li><li class=""><a href="/brunato/postqe/network/postqe-ase">Network
</a></li><li class=""><a href="/brunato/postqe/compare?from=master&amp;to=postqe-ase">Compare
</a></li><li class=""><a href="/brunato/postqe/branches">Branches
</a></li><li class=""><a href="/brunato/postqe/tags">Tags
</a></li></ul>
</div>
</div>

<div class="container-fluid container-limited">

<div class="tree-holder" id="tree-holder">
<div class="nav-block">
<div class="tree-ref-holder">
<form class="project-refs-form" action="/brunato/postqe/refs/switch" accept-charset="UTF-8" method="get"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="destination" id="destination" value="blob" />
<input type="hidden" name="path" id="path" value="postqe/fortranmodules2/funct.mod" />
<div class="dropdown">
<button class="dropdown-menu-toggle js-project-refs-dropdown" type="button" data-toggle="dropdown" data-selected="postqe-ase" data-ref="postqe-ase" data-refs-url="/brunato/postqe/refs"><span class="dropdown-toggle-text">postqe-ase</span><i class="fa fa-chevron-down"></i></button>
<div class="dropdown-menu dropdown-menu-selectable">
<div class="dropdown-title"><span>Switch branch/tag</span><button class="dropdown-title-button dropdown-menu-close" aria-label="Close" type="button"><i class="fa fa-times dropdown-menu-close-icon"></i></button></div>
<div class="dropdown-input"><input type="search" id="" class="dropdown-input-field" placeholder="Search branches and tags" autocomplete="off" /><i class="fa fa-search dropdown-input-search"></i><i role="button" class="fa fa-times dropdown-input-clear js-dropdown-input-clear"></i></div>
<div class="dropdown-content"></div>
<div class="dropdown-loading"><i class="fa fa-spinner fa-spin"></i></div>
</div>
</div>
</form>
</div>
<ul class="breadcrumb repo-breadcrumb">
<li>
<a href="/brunato/postqe/tree/postqe-ase">postqe
</a></li>
<li>
<a href="/brunato/postqe/tree/postqe-ase/postqe">postqe</a>
</li>
<li>
<a href="/brunato/postqe/tree/postqe-ase/postqe/fortranmodules2">fortranmodules2</a>
</li>
<li>
<a href="/brunato/postqe/blob/postqe-ase/postqe/fortranmodules2/funct.mod"><strong>
funct.mod
</strong>
</a></li>
</ul>
</div>
<ul class="blob-commit-info hidden-xs">
<li class="commit js-toggle-container" id="commit-30829001">
<a href="mailto:mauropalumbo75@gmail.com"><img class="avatar has-tooltip hidden-xs s36" alt="Mauro Palumbo&#39;s avatar" title="Mauro Palumbo" src="https://secure.gravatar.com/avatar/6a63322a80de331a574a4a6003fe1901?s=72&amp;d=identicon" /></a>
<div class="commit-info-block">
<div class="commit-row-title">
<span class="item-title">
<a class="commit-row-message" href="/brunato/postqe/commit/30829001748a9223d3843f0a8d80719585e32c71">func.mod added (necessary for compiling the fortran modules at least for now)</a>
<span class="commit-row-message visible-xs-inline">
&middot;
30829001
</span>
</span>
<div class="commit-actions hidden-xs">
<button class="btn btn-clipboard" data-toggle="tooltip" data-placement="bottom" data-container="body" data-clipboard-text="30829001748a9223d3843f0a8d80719585e32c71" type="button" title="Copy to Clipboard"><i class="fa fa-clipboard"></i></button>
<a class="commit-short-id btn btn-transparent" href="/brunato/postqe/commit/30829001748a9223d3843f0a8d80719585e32c71">30829001</a>
<a class="btn btn-default" href="/brunato/postqe/tree/30829001748a9223d3843f0a8d80719585e32c71">Browse Files</a>
</div>
</div>
<div class="commit-row-info">
<a class="commit-author-link has-tooltip" title="mauropalumbo75@gmail.com" href="mailto:mauropalumbo75@gmail.com">Mauro Palumbo</a>
authored
<time class="time_ago js-timeago js-timeago-pending" datetime="2017-08-11T10:10:23Z" title="Aug 11, 2017 10:10am" data-toggle="tooltip" data-placement="top" data-container="body">2017-08-11 12:10:23 +0200</time><script>
//<![CDATA[
$('.js-timeago-pending').removeClass('js-timeago-pending').timeago()
//]]>
</script>
</div>
</div>
</li>

</ul>
<div class="blob-content-holder" id="blob-content-holder">
<article class="file-holder">
<div class="file-title">
<i class="fa fa-file-text-o fa-fw"></i>
<strong>
funct.mod
</strong>
<small>
3.16 KB
</small>
<div class="file-actions hidden-xs">
<div class="btn-group tree-btn-group">
<a class="btn btn-sm" target="_blank" href="/brunato/postqe/raw/postqe-ase/postqe/fortranmodules2/funct.mod">Raw</a>
<a class="btn btn-sm" href="/brunato/postqe/commits/postqe-ase/postqe/fortranmodules2/funct.mod">History</a>
<a class="btn btn-sm" href="/brunato/postqe/blob/30829001748a9223d3843f0a8d80719585e32c71/postqe/fortranmodules2/funct.mod">Permalink</a>
</div>
<div class="btn-group" role="group">

<button name="button" type="submit" class="btn btn-default" data-target="#modal-upload-blob" data-toggle="modal">Replace</button>
<button name="button" type="submit" class="btn btn-remove" data-target="#modal-remove-blob" data-toggle="modal">Delete</button>
</div>

</div>
</div>
<div class="file-content blob_file blob-no-preview">
<div class="center">
<a href="/brunato/postqe/raw/postqe-ase/postqe/fortranmodules2/funct.mod"><h1 class="light">
<i class="fa fa-download"></i>
</h1>
<h4>
Download (3.16 KB)
</h4>
</a></div>
</div>

</article>
</div>

</div>
<div class="modal" id="modal-remove-blob">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<a class="close" data-dismiss="modal" href="#">×</a>
<h3 class="page-title">Delete funct.mod</h3>
</div>
<div class="modal-body">
<form class="form-horizontal js-replace-blob-form js-quick-submit js-requires-input" action="/brunato/postqe/blob/postqe-ase/postqe/fortranmodules2/funct.mod" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="_method" value="delete" /><input type="hidden" name="authenticity_token" value="bgbtgS8jKGBUyh4strlEar0Jo0nclDYtnMafVwMmSmnnTf7bMzDN9w9trKwKr/wY4xH4oIQ8JK6xmXRVI54MfA==" /><div class="form-group commit_message-group">
<label class="control-label" for="commit_message-9c05019088cf32236be5294ce87d1cbd">Commit message
</label><div class="col-sm-10">
<div class="commit-message-container">
<div class="max-width-marker"></div>
<textarea name="commit_message" id="commit_message-9c05019088cf32236be5294ce87d1cbd" class="form-control js-commit-message" placeholder="Delete funct.mod" required="required" rows="3">
Delete funct.mod</textarea>
</div>
</div>
</div>

<div class="form-group branch">
<label class="control-label" for="target_branch">Target branch</label>
<div class="col-sm-10">
<input type="text" name="target_branch" id="target_branch" value="postqe-ase" required="required" class="form-control js-target-branch" />
<div class="js-create-merge-request-container">
<div class="checkbox">
<label for="create_merge_request-19133681c549f36994a5f86dd970dedb"><input type="checkbox" name="create_merge_request" id="create_merge_request-19133681c549f36994a5f86dd970dedb" value="1" class="js-create-merge-request" checked="checked" />
Start a <strong>new merge request</strong> with these changes
</label></div>
</div>
</div>
</div>
<input type="hidden" name="original_branch" id="original_branch" value="postqe-ase" class="js-original-branch" />

<div class="form-group">
<div class="col-sm-offset-2 col-sm-10">
<button name="button" type="submit" class="btn btn-remove btn-remove-file">Delete file</button>
<a class="btn btn-cancel" data-dismiss="modal" href="#">Cancel</a>
</div>
</div>
</form></div>
</div>
</div>
</div>
<script>
  new NewCommitForm($('.js-replace-blob-form'))
</script>

<div class="modal" id="modal-upload-blob">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<a class="close" data-dismiss="modal" href="#">×</a>
<h3 class="page-title">Replace funct.mod</h3>
</div>
<div class="modal-body">
<form class="js-quick-submit js-upload-blob-form form-horizontal" action="/brunato/postqe/update/postqe-ase/postqe/fortranmodules2/funct.mod" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="_method" value="put" /><input type="hidden" name="authenticity_token" value="Ywz+Hzt+nF7R02FFaeHE+QWSl6lpeKPbN3mwD4Aval/qR+1FJ215yYp008XV93yLW4rMQDHQsVgaJlsNoJcsSg==" /><div class="dropzone">
<div class="dropzone-previews blob-upload-dropzone-previews">
<p class="dz-message light">
Attach a file by drag &amp; drop or
<a class="markdown-selector" href="#">click to upload</a>
</p>
</div>
</div>
<br>
<div class="alert alert-danger data dropzone-alerts" style="display:none"></div>
<div class="form-group commit_message-group">
<label class="control-label" for="commit_message-bbc4ee2ad72789770a0f0794d52a4075">Commit message
</label><div class="col-sm-10">
<div class="commit-message-container">
<div class="max-width-marker"></div>
<textarea name="commit_message" id="commit_message-bbc4ee2ad72789770a0f0794d52a4075" class="form-control js-commit-message" placeholder="Replace funct.mod" required="required" rows="3">
Replace funct.mod</textarea>
</div>
</div>
</div>

<div class="form-group branch">
<label class="control-label" for="target_branch">Target branch</label>
<div class="col-sm-10">
<input type="text" name="target_branch" id="target_branch" value="postqe-ase" required="required" class="form-control js-target-branch" />
<div class="js-create-merge-request-container">
<div class="checkbox">
<label for="create_merge_request-20ac85c466f0c77a9c14cd1d0b282b42"><input type="checkbox" name="create_merge_request" id="create_merge_request-20ac85c466f0c77a9c14cd1d0b282b42" value="1" class="js-create-merge-request" checked="checked" />
Start a <strong>new merge request</strong> with these changes
</label></div>
</div>
</div>
</div>
<input type="hidden" name="original_branch" id="original_branch" value="postqe-ase" class="js-original-branch" />

<div class="form-actions">
<button name="button" type="submit" class="btn btn-small btn-create btn-upload-file" id="submit-all">Replace file</button>
<a class="btn btn-cancel" data-dismiss="modal" href="#">Cancel</a>
</div>
</form></div>
</div>
</div>
</div>
<script>
  disableButtonIfEmptyField($('.js-upload-blob-form').find('.js-commit-message'), '.btn-upload-file');
  new BlobFileDropzone($('.js-upload-blob-form'), 'put');
  new NewCommitForm($('.js-upload-blob-form'))
</script>

</div>

</div>
</div>
</div>
</div>
</div>

<script>
  GitLab.GfmAutoComplete.dataSource = "/brunato/postqe/autocomplete_sources?type_id=postqe-ase%2Fpostqe%2Ffortranmodules2%2Ffunct.mod"
  GitLab.GfmAutoComplete.cachedData = undefined;
  GitLab.GfmAutoComplete.setup();
</script>


</body>
</html>

