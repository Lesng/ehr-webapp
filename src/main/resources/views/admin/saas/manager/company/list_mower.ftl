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
<@layout.mower_admin title="注册公司列表" scripts="admin/saas/manager/company/list_mower.js" version="[$Revision: 4511 $]" require="knockoutjs">
	<#assign code="company-list" />
	<@ui.panel>
		<@ui.panel_head>
			<div class="col-xs-12 col-md-6 btn-group">
				<a id="add-action-${code}" class="btn btn-default" data-toggle="pushBreadcrumb" data-label="新增" data-page="admin/saas/manager/company/create">
				    <i class="fa fa-plus-circle fa-lg"></i>
				    新增
				</a>
				<a id="edit-action-${code}" class="btn btn-default" data-label="编辑">
				    <i class="fa fa-pencil fa-lg"></i>
				    编辑
				</a>
				<a id="delete-action-${code}" class="btn btn-default" data-label="删除">
				    <i class="fa fa-trash-o fa-lg"></i>
				    删除
				</a>
			</div>
			<div class="col-xs-12 col-md-offset-2 col-md-4">
				<div class="input-group">
					<input type="text" class="form-control" id="search-text-${code}">
					<span class="input-group-addon" id="search-btn-${code}"><i class="fa fa-search"></i></span>
	            </div>
            </div>
		</@ui.panel_head>
		<@ui.panel_body>
			<table id="list-${code}" class="table table-striped table-bordered table-hover" width="100%"
			 data-serverSide="true" 
			 data-paging="true" 
			 data-ordering="false" 
			 data-ajax="${base}/admin/saas/manager/company/datas"
			 rel="datatables">
			    <thead>
			        <tr>
			            <th data-name="companyCode">公司编号</th>
			            <th data-name="companyName">公司名称</th>
			            <th data-name="supervisor">负责人</th>
			            <th data-name="contact">联系方式</th>
			        </tr>
			    </thead>
			</table>
		</@ui.panel_body>
	</@ui.panel>
</@layout.mower_admin>