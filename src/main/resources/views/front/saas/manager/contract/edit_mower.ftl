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
<#assign title>
	<#if id?exists>编辑合同<#else>新增合同</#if>
</#assign>

<@layout.mower_front title=title scripts="front/saas/manager/contract/edit_mower.js" version="[$Revision: 4511 $]" require="knockoutjs">
	<#assign code="edit-contract" />
		<@ui.panel>
			<@ui.panel_head>
				<div class="col-xs-12 col-md-12">
					<@macula.preAuthorized url="/front/saas/manager/contract/save" method="POST">
				    <button id="save-action-${code}" class="btn btn-primary">
				        <i class="fa fa-check-circle fa-lg"></i>
				        保存
				    </button>
				    </@macula.preAuthorized>
				    <button id="cancel-action-${code}" class="btn btn-default" data-toggle="popBreadcrumb">
				        <i class="fa fa-reply fa-lg"></i>
				        取消
				    </button>
				</div>
			</@ui.panel_head>
			<@ui.panel_body>
		        <form id="form-${code}" item-id="${id?if_exists}" action="${base}/front/saas/manager/contract/save" method="post" class="form-horizontal" rel="validate-form" data-bv-container="tooltip">
		        	<input type="hidden" name="contract.id" data-bind="value: id" />
		            <div class="form-body">
		            	<h3 class="form-section">合同信息</h3>
		                <div class="row">
	                        <div class="col-md-6">
	                            <div class="form-group">
	                                <label class="control-label col-md-4">公司编号：</label>
	                                <div class="col-md-8">
	                                    <input type="text"  name="contract.companyCode" data-bind="value: companyCode" class="form-control input-sm" required maxlength="50" <#if id?exists>readOnly</#if> />
	                                </div>
	                            </div>
	                        </div>
	                        <div class="col-md-6">
	                            <div class="form-group">
	                                <label class="control-label col-md-4">名称：</label>
	                                <div class="col-md-8">
	                                    <input type="text"  name="contract.name" data-bind="value: name"  class="form-control input-sm" required maxlength="50"/>
	                                </div>
	                            </div>
	                        </div>
		                </div>
		            </div>
		        </form>
			</@ui.panel_body>
	</@ui.panel>
</@layout.mower_front>
