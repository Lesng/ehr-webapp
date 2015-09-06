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
<#global SetCustomContent>
	<div class="row step-container">
		<div class="col-md-6 fuelux">
			<div class="panel panel-default">
				<div class="performance-progress">
					<div class="wizard">
						<ul class="steps pull-right">
							<li class="active">
								合约制定
								<span class="badge">4</span>
								<span class="chevron"></span>
							</li>
							<li>
								合约评分
								<span class="badge">5</span>
								<span class="chevron"></span>
							</li>
							<li>
								合约审核
								<span class="badge">3</span>
								<span class="chevron"></span>
							</li>
							<li>
								申诉处理
								<span class="badge">1</span>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-3 pull-right" style="padding-top: 18px">
	        <button type="button" class="btn btn-lg btn-darkorange" style="font-size: 32px;padding: 10px 40px;">合约查看</button>
	    </div>
	</div>
</#global>
<@layout.mower_front title="合约制定列表" scripts="front/saas/manager/contract/list_mower.js" version="[$Revision: 4511 $]" require="knockoutjs">
	<#assign code="contract-list" />
	<@ui.panel>
		<@ui.panel_head>
			<div id="actions-list-${code}" class="col-xs-12 col-md-6">
				<@macula.preAuthorized url="/front/saas/manager/contract/create">
				<button id="add-action-${code}" class="btn btn-default" data-toggle="pushBreadcrumb" data-label="新增" data-page="front/saas/manager/contract/create">
				    <i class="fa fa-plus-circle fa-lg"></i>
				    新增
				</button>
				</@macula.preAuthorized>
				<@macula.preAuthorized url="/front/saas/manager/contract/edit/">
				<button id="edit-action-${code}" class="btn btn-default" data-label="编辑" data-bind="enable: selectedRow" disabled>
				    <i class="fa fa-pencil fa-lg"></i>
				    编辑
				</button>
				</@macula.preAuthorized>
				<@macula.preAuthorized url="/front/saas/manager/contract/delete/" method="POST">
				<button id="delete-action-${code}" class="btn btn-default" data-label="删除" data-bind="enable: selectedRow" disabled>
				    <i class="fa fa-trash-o fa-lg"></i>
				    删除
				</button>
				</@macula.preAuthorized>				
			</div>
			<div class="col-xs-12 col-md-offset-2 col-md-4">
				<div class="input-group">
					<input type="text" class="form-control" id="search-text-${code}" placeholder="请输入关键字搜索" />
					<span class="input-group-addon" id="search-btn-${code}"><i class="fa fa-search"></i></span>
	            </div>
            </div>
		</@ui.panel_head>
		<@ui.panel_body>
			<table id="list-${code}" class="table table-striped table-bordered table-hover" width="100%"
			 data-serverSide="true" 
			 data-paging="true" 
			 data-ordering="false" 
			 data-ajax="${base}/front/saas/manager/contract/datas"
			 rel="datatables">
			    <thead>
			        <tr>
			            <th data-name="id">序号</th>
			            <th data-name="name">合约方案</th>
			            <th data-name="state">姓名</th>
			            <th data-name="state">部门</th>
			        </tr>
			    </thead>
			</table>
		</@ui.panel_body>
	</@ui.panel>
</@layout.mower_front>