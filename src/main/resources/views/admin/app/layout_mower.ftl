<#--
使用者可以通过覆盖这个文件实现对一些宏的重新定义包括：
-- html head中的内容，包括meta css等
<#macro mower_admin_head title = ''>
-- LOGO
<#macro mower_admin_header_logo>
-- 菜单栏
<#macro mower_admin_header_menu>
-- 登录后提示信息
<#macro mower_admin_header_login>
-- 页脚
<#macro mower_admin_footer>
包含的Javascript(angularjs,knockoutjs,datagrid)
<#macro mower_admin_scripts require = ''>
-->
<#macro mower_admin_header_login>
    <!-- Account Area and Settings -->
    <div class="navbar-header pull-right">
        <div class="navbar-account">
            <ul class="account-area">
                <li>
                    <a class="login-area dropdown-toggle" data-toggle="dropdown">
                        <section>
                            <h2><span class="profile">${request.getUserPrincipal().getPrincipal().getNickname()}</span></h2>
                        </section>
                    </a>
                    <!--Login Area Dropdown-->
                    <ul class="pull-right dropdown-menu dropdown-arrow dropdown-login-area">
                        <li class="username">
                        	<a>&nbsp;</a>
                        </li>
                        <li class="dropdown-footer">
                            <a href="<@macula.logoutURL />&forward=/login">退出</a>
                        </li>
                    </ul>
                    <!--/Login Area Dropdown-->
                </li>
                <!-- /Account Area -->
            </ul>
        </div>
    </div>
    <!-- /Account Area and Settings -->
</#macro>
<#macro mower_admin_header_menu>
	<div  class="header-menu yamm">
		<ul class="nav navbar-nav" data-url="${base}/admin/menu/${sessionId!'session'}" rel="nbMenu">
		<#list adminMainMenu as mainMenu>
			<li>
				<a href="#" data-toggle="menu" data-hover="dropdown" mcode="${(mainMenu.code)!""}" data-code="${(mainMenu.code)!""}">${(mainMenu.name)!""}<i class="fa fa-angle-down"></i></a>
			</li>
		</#list>
		</ul>
	</div>
</#macro>
<#macro mower_admin_footer>
    <!-- BEGIN FOOTER -->
    <div id="footer" class="mu-footer-container" style="text-align:center">
        <div class="container-fluid">
            <p>&copy; 2015 <a href="http://www.tenoner.net" target="_blank">天奕咨询</a>
            </p>
        </div>
    </div>
    <!-- END FOOTER -->
</#macro>
<#--
局部替换：如果以下变量定义在具体业务模板中，则会覆盖你的layout模板中的定义

<#global mower_admin_scripts_addition>
	加入你自己的javascript库文件
</#global>
-->

<#global mower_admin_head_addition>
	<link rel="stylesheet" href="${resources_admin}/mower/${mowerVersion}/css/gray${minVersion!""}.css"/>
</#global>