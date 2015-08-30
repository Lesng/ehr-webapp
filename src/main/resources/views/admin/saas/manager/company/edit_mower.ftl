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
	<#if id?exists>编辑公司<#else>新增公司</#if>
</#assign>

<@layout.mower_admin title=title scripts="admin/saas/manager/company/edit_mower.js" version="[$Revision: 4511 $]" require="knockoutjs">
	<#assign code="edit-company" />
		<@ui.panel>
			<@ui.panel_head>
				<div class="col-xs-12 col-md-12">
				    <a id="save-action-${code}" class="btn btn-primary">
				        <i class="fa fa-check-circle fa-lg"></i>
				        保存
				    </a>
				    <a id="cancel-action-${code}" class="btn btn-default" data-toggle="popBreadcrumb">
				        <i class="fa fa-reply fa-lg"></i>
				        取消
				    </a>
				</div>
			</@ui.panel_head>
			<@ui.panel_body>
		        <form id="form-${code}" item-id="${id?if_exists}" action="${base}/admin/saas/manager/company/save" method="post" class="form-horizontal" rel="validate-form" data-bv-container="tooltip">
		        	<input type="hidden" name="company.id" data-bind="value: id" />
		            <div class="form-body">
		            	<h3 class="form-section">公司信息</h3>
		                <div class="row">
	                        <div class="col-md-6">
	                            <div class="form-group">
	                                <label class="control-label col-md-4">公司编号：</label>
	                                <div class="col-md-8">
	                                    <input type="text"  name="company.companyCode" data-bind="value: companyCode" class="form-control input-sm" required maxlength="50" <#if id?exists>readOnly</#if> />
	                                </div>
	                            </div>
	                        </div>
	                        <div class="col-md-6">
	                            <div class="form-group">
	                                <label class="control-label col-md-4">公司名称：</label>
	                                <div class="col-md-8">
	                                    <input type="text"  name="company.companyName" data-bind="value: companyName"  class="form-control input-sm" required maxlength="50"/>
	                                </div>
	                            </div>
	                        </div>
		                </div>
	                    <div class="row">
	                        <div class="col-md-6">
	                            <div class="form-group">
	                                <label class="control-label col-md-4">负责人：</label>
	                                <div class="col-md-8">
	                                    <input type="text"  name="company.supervisor" data-bind="value: supervisor" class="form-control input-sm" required  maxlength="255"/>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="col-md-6">
	                            <div class="form-group">
	                                <label class="control-label col-md-4">联系方式：</label>
	                                <div class="col-md-8">
	                                    <input type="text"  name="company.contact" data-bind="value: contact"  class="form-control input-sm" required maxlength="255" />
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="row">
	                        <div class="col-md-6">
	                            <div class="form-group">
	                                <label class="control-label col-md-4">公司密钥：</label>
	                                <div class="col-md-8">
										<input type="text"  name="company.secureKey" data-bind="value: secureKey" class="form-control input-sm" required maxlength="1024"/>
									</div>
	                            </div>
	                        </div>
	                        <div class="col-md-6">
	                            <div class="form-group">
	                                <label class="control-label col-md-4">公司私钥：</label>
	                                <div class="col-md-8">
	                                    <input type="text"  name="company.privateKey" data-bind="value: privateKey"  class="form-control input-sm" required  maxlength="1024" />
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                     <div class="row">
	                        <div class="col-md-12">
	                        	<div class="form-group">
	                                <label class="control-label col-md-2">公司地址：</label>
	                                <div class="col-md-10">
	                                    <input type="text"  name="company.homepage" data-bind="value: homepage"  class="form-control input-sm" required  maxlength="1024" />
	                                </div>
	                            </div>
	                        </div>
	                     </div>
		            </div>
		        </form>
			</@ui.panel_body>
	</@ui.panel>
</@layout.mower_admin>
