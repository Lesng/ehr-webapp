<#--

    Copyright 2010-2012 the original author or authors.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

            http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

-->
<#-- $Id: layout_mower.ftl 5441 2014-09-17 02:52:08Z eric.ou $ -->

<#global resources_front="${resourceHost!''}/resources/mower/${appVersion!''}/front" />
<#global views_front="${resourceHost!''}/views/mower/${appVersion!''}/front" />

<#macro mower_front_head title = '' require = '' responsive = ''>
    <meta http-equiv="X-UA-Compatible" content="edge"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<#if responsive == 'yes'>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	</#if>
    <meta name="version" content="${(version?replace("(\\$)|(\\s\\$)|(Revision:\\s)", "", "r"))?if_exists}-${appVersion!""}"/>
    <title>${title?if_exists}</title>
    <link rel="icon" href="${resources_front}/app/images/favicon.ico" type="image/x-icon"/>
    <#-- BEGIN GLOBAL MANDATORY STYLES -->
    <link rel="stylesheet" href="${resources_front}/bootstrap/${bootstrapVersion}/css/bootstrap${minVersion!""}.css"/>
    <link rel="stylesheet" href="${resources_front}/mower/${mowerVersion}/css/mower${minVersion!""}.css"/>
	<#if require?contains("")>
	<#-- TODO -->
	</#if>
	${mower_front_head_addition!""}
    <link rel="stylesheet" href="${resources_front}/app/css/app${minVersion!""}.css"/>
    <#-- END GLOBAL MANDATORY STYLES -->
    
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
  	<script src="${resources_front}/libs/html5shiv/${html5shivVersion}/html5shiv${minVersion!""}.js"></script>
  	<script src="${resources_front}/libs/respond/${respondVersion}/respond${minVersion!""}.js"></script>
	<![endif]-->
</#macro>

<#macro mower_front_header_login responsive=''>
<div class="navbar navbar-default mu-navbar-sm" role="navigation">
	<div class="container">
    	<div class="row">
			<!-- login left -->
            <div class="<#if responsive == 'yes'>col-xs-12 col-md-6<#else>col-xs-6</#if>">
                <ul class="nav navbar-nav mu-navbar-nav-sm">
                    <li>
						${mower_front_header_login_custom_left!""}
                    </li>
                </ul>
            </div>

			<!-- login right -->
            <div class="<#if responsive == 'yes'>clo-xs-12 col-md-6<#else>col-xs-6</#if>">
                <ul class="nav navbar-nav mu-navbar-nav-sm navbar-right">
                    <li>
						<a href="#">${request.getUserPrincipal().getPrincipal().getNickname()}</a>
					</li>
					<li>
						<a href="<@macula.logoutURL />&forward=/login">退出</a>
                    </li>
					<#if mower_front_header_login_custom_right?exists>
						${mower_front_header_login_custom_right}
					<#else>
                    	<li class="divider-vertical"></li>
                    	<li>
                        	<a target="_blank" href="#"><i class="fa fa-sitemap"></i>网站导航</a>
                    	</li>
					</#if>
                </ul>
            </div>
   		</div>
	</div>				
</div>
</#macro>

<#macro mower_front_header_ad responsive=''>
<div class="container mu-header-banner">
	<#if mower_front_header_ad_custom?exists>
		${mower_front_header_ad_custom}
	<#else>
	</#if>
</div>
</#macro>

<#macro mower_front_header_logo responsive=''>
<div class="container mu-header-inner <#if responsive == 'yes'>visible-md-block visible-lg-block</#if>" style="height:83px">
	<#if mower_front_header_logo_custom?exists>
		${mower_front_header_logo_custom}
	<#else>	
    	<div class="row">
	        <div class="<#if responsive == 'yes'>col-md-3 col-xs-6 hidden-xs<#else>col-xs-6</#if>">
	            <img src="${resources_front}/app/images/9_logo.png" width="293" height="83" alt="MACULA">
	        </div>
	    </div>
	</#if>
</div>
</#macro>

<#macro mower_front_header_menu responsive=''>
<!-- BEGIN MAIN MENU -->
<div class="mu-header-navbar">
    <div class="container">
	<#if mower_front_header_menu_custom?exists>
		${mower_front_header_menu_custom}
	<#else>	
        <div class="navbar navbar-default-red yamm" role="navigation">
			<#if responsive == 'yes'>
            <div class="navbar-header">
                <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
                	<span class="icon-bar"></span>
                	<span class="icon-bar"></span>
                	<span class="icon-bar"></span>
                </button>	
            </div>
			</#if>
	        <div <#if responsive == 'yes'>class="navbar-collapse collapse"</#if> id="navbar-main">
	            <ul class="nav navbar-nav" data-url="${base}/front/menu/${sessionId!'session'}" rel="nbMenu">
        			<#list frontMainMenu as mainMenu>
						<li <#if mainMenu_index==0>class="active"</#if>>
							<#if mainMenu.group>
 							<a href="#" data-toggle="menu" data-hover="dropdown" data-code="${(mainMenu.code)!""}">
								${(mainMenu.name)!""}
							</a>
							<#else>
            				<a href="${base}/${(mainMenu.uri)!'admin'}" mcode="${(mainMenu.code)!""}">${(mainMenu.name)!""}</a>
							</#if>
						</li>
            		</#list>
	            </ul>
	            <ul class="nav navbar-nav navbar-right">
	                ${mower_front_header_menu_custom_right!""}
	            </ul>
	        </div>
	    </div>
	</#if>
	</div>
</div>
<!-- END MAIN MENU --> 
</#macro>

<#macro mower_front_footer>
    <!-- BEGIN FOOTER -->
    <div id="footer" class="mu-footer-container">
        <div class="container">
			${mower_front_footer_custom!""}
        </div>
    </div>
    <!-- END FOOTER -->
</#macro>

<#macro mower_front_scripts require = ''>
	<!-- BEGIN CORE LIBS -->
	<!--[if lt IE 9]>
	<script type="text/javascript" src="${resources_front}/libs/jquery/${jquery1Version}/jquery${minVersion!""}.js"></script>
	<![endif]-->
	<!--[if gte IE 9]><!-->
	<script type="text/javascript" src="${resources_front}/libs/jquery/${jquery2Version}/jquery${minVersion!""}.js"></script>	
	<!--<![endif]-->
	<script type="text/javascript" src="${resources_front}/libs/jquery-tmpl/jquery.tmpl${minVersion!""}.js"></script>
	<!-- END CORE LIBS -->
	
	<!-- BEGIN UI LIBS -->
	<script type="text/javascript" src="${resources_front}/bootstrap/${bootstrapVersion}/js/bootstrap${miniVersion!""}.js"></script>
	<script type="text/javascript" src="${resources_front}/mower/${mowerVersion}/js/mower${minVersion!""}.js"></script>
	<!-- END UI LIBS -->
	
	<!-- MVC LIBRARY -->
	<#if require?contains('angularjs')>
	<script type="text/javascript" src="${resources_front}/mvc/angularjs/${angularVersion}/angular${minVersion!""}.js"></script>
	</#if>
	<#if require?contains('knockoutjs')>
	<script type="text/javascript" src="${resources_front}/mvc/knockoutjs/${knockoutVersion}/knockout${minVersion!""}.js"></script>
	<script type="text/javascript" src="${resources_front}/mvc/knockoutjs/${knockoutMappingVersion}/knockout.mapping${minVersion!""}.js"></script>
	</#if>
	<!-- END MVC LIBRARY -->
	
	<!-- Flot LIBRARY -->
	<#if require?contains('flot')>
	<script type="text/javascript" src="${resources_front}/libs/flot/1.1.0/jquery.flot${minVersion!""}.js"></script>
	<script type="text/javascript" src="${resources_front}/libs/flot/1.1.0/jquery.flot.selection${minVersion!""}.js"></script>
	<script type="text/javascript" src="${resources_front}/libs/flot/1.1.0/jquery.flot.resize${minVersion!""}.js"></script>
	<script type="text/javascript" src="${resources_front}/libs/flot/1.1.0/jquery.flot.tooltip${minVersion!""}.js"></script>
	<script type="text/javascript" src="${resources_front}/libs/flot/1.1.0/jquery.flot.crosshair${minVersion!""}.js"></script>
	</#if>
	<!-- END Flot LIBRARY -->
	
	<!-- CUSTOM LIBRARY -->
	${mower_front_scripts_addition!""}
	<!-- END CUSTOM LIBRARY -->
</#macro>

<#include "/front/app/layout_mower.ftl" />

<#macro mower_front title scripts = '' version = '' require = '' responsive = ''>
<#global ui_name = 'mower' />
<#global ui_path = 'front' />
<#if Request['isAjaxRequest']?exists && Request['isAjaxRequest'] == true>
	<#if title?exists><title>${title?if_exists}</title></#if>
	<#if version?exists><meta content="${(version?replace("(\\$)|(\\s\\$)|(Revision:\\s)", "", "r"))?if_exists}-${appVersion!""}"></#if>
	<#nested />
	<@includeScripts scripts />
<#else>
	<!DOCTYPE html>
	<html>
	<head>
		<@mower_front_head title="${title!''}" require="${require!''}" responsive="${responsive!''}" />
	    <script type="text/javascript">
		    var base = '${base}', startTime = (new Date).getTime(), CURRENTUSER = '${(request.getUserPrincipal().getName())!}';
		    var dateTimePattern = '${dateTimePattern}', datePattern = '${datePattern}', timePattern = '${timePattern}'; 
	    </script>
	</head>
	
	<body class="ehr-front" data-base="${base}">
	
	<noscript>
	    <div class="noscript error">
	        您好，要正常运行应用程序，浏览器必须支持Javascript！
	    </div>
	</noscript>
	
	<!-- BEGIN HEADER -->
	<div id="header" class="mu-header-container">
		<@mower_front_header_login responsive="${responsive!''}"/>
        <!-- BEGIN HEADER MAIN CONTAINER -->
        <div class="mu-header">
        	<@mower_front_header_ad responsive="${responsive!''}"/>
			<@mower_front_header_logo responsive="${responsive!''}"/>
			<@mower_front_header_menu responsive="${responsive!''}"/>
        </div>
        <!-- END HEADER MAIN CONTAINER -->		
	</div>
	<!-- END HEADER -->
	
	<!-- BEGIN MAIN -->
	<div class="mu-main-container container-fluid">
		<!-- BEGIN SIDEBAR -->
		<div class="mu-sidebar-wrapper">
            <div class="mu-sidebar" id="sidebar">
                <!-- Page Sidebar Header-->
                <div class="sidebar-header-wrapper">
                    <div class="sidebar-header-profile">
                    	<img src="${resources_front}/app/images/bing.png" class="img-circle" style="background:white" />
                        <div class="details">
                          <div>欢迎您，</div>
                          <div><a href="#"><span>${userPrincipal.nickname}</span>&nbsp;<i class="fa fa-cog"></i></a></div>
                          <div>人事部</div>
                        </div>
                    </div>
                    <div class="sidebar-header-login">
                       <p>上次登录时间:</p>
                       <p>2015-08-25 16:25</p> 
                    </div>
                    <div class="sidebar-header-tool">
                        <div class="btn-group" data-toggle="buttons-radio">
                            <button type="button" class="btn btn-default">员　工</button>
                            <button type="button" class="btn btn-default active">管理员</button>
                        </div>
                    </div>
                </div>
                <!-- /Page Sidebar Header -->
                <!-- Sidebar Menu -->
                <ul class="nav sidebar-menu" id="frontMainMenu">
                	<#list frontMainMenu as mainMenu>
                	<li>
                		<a href="${base}/${(mainMenu.originURI)!"#"}" mcode="${(mainMenu.code)!""}">
                			<span class="menu-text">${(mainMenu.name)!""}</span>
                		</a>
                	</li>
                	</#list>
                </ul>
                <!-- /Sidebar Menu -->
            </div>
        </div>
        <!-- END SIDEBAR -->
		<!-- BEGIN CONTENT -->
		<div class="mu-content-wrapper">
		    <div class="mu-content">
		        <!-- BEGIN BREADCRUMB -->
                <div class="mu-content-header" style="display:none">
                    <div class="mu-breadcrumb-wrapper">
                        <ul class="breadcrumb" data-target="#mainContent">
                            <li data-target="breadcrumb0" class="active"></li>
                        </ul>
                    </div>
                </div>
                <!-- END BREADCRUMB-->
                <div class="mu-content-body">
                  ${SetCustomContent!""}
                </div>
		        <div class="mu-content-body">
		            <div class="row">
		                <div class="col-md-12">
		                    <div id="mainContent">
		                        <div data-panel="breadcrumb0">
			                		<#nested />
		                        </div>
		                    </div>
		                </div>
		            </div>
		        </div>
			   	<!-- BEGIN FOOTER -->
				<div id="footer" class="mu-footer" style="margin-top: -30px;">
					<@mower_front_footer />
				</div>
				<!-- END FOOTER -->
		    </div>
		</div>
		<!-- END CONTENT -->
	</div>
	<!-- END MAIN -->
	

	
	<@mower_front_scripts require = "${require!''}" />
	
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script type="text/javascript" src="${resources_front}/app/js/config.js"></script>
	<script type="text/javascript" src="${resources_front}/app/js/app${minVersion!""}.js"></script>
	
	<@includeScripts scripts="front/app/layout_mower.js" />
	<@includeScripts scripts="ui/app/ui.js" />
	<@includeScripts scripts />

	<!-- END PAGE LEVEL SCRIPTS -->
	</body>
	</html>
</#if>
</#macro>

