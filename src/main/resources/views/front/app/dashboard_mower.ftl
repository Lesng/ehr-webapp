<@layout.mower_front title="Dashboard">
<div class="row step-container">
	<div class="col-md-6 fuelux push-right">
		<div class="panel panel-widget panel-default">
			<div class="performance-progress">
				<div class="wizard">
				<ul class="row steps pull-right">
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
</div>
<div id="panelList" class="panel panel-widget panel-default">
	<div class="panel-heading bordered-themesecondary">
		<div class="row mu-panel-toolbar">
			<div class="col-xs-12 col-md-6">
				<button class="btn btn-default" data-label="新增" data-page="examples/admin/index/form.html" data-toggle="pushBreadcrumb">
					<i class="fa fa-plus-circle fa-lg"></i>
					新增
				</button>
				<button class="btn btn-default" data-toggle="pushBreadcrumb" data-label="编辑" data-page="examples/admin/index/form.html">
					<i class="fa fa-pencil fa-lg"></i>
					编辑
				</button>
				<button class="btn btn-default" href="#">
					<i class="fa fa-files-o"></i>
					复制
				</button>
				<button class="btn btn-default" href="#">
					<i class="fa fa-trash-o fa-lg"></i>
					删除
				</button>
				<button id="addForm" class="btn btn-default" data-label="模态框" data-toggle="modalbox" data-type="iframe"
					data-title="iframe 测试" data-url="../../../partial/iframe-modal.html" data-width="800px" data-height="500px">
					<i class="fa fa-plus-circle fa-lg"></i>
					模态框
				</button>
			</div>
			<div class="col-xs-12 col-md-offset-2 col-md-4">
				<div class="input-group">
					<input type="text" class="form-control" id="search-text-" placeholder="请输入关键字搜索" />
					<span class="input-group-addon" id="search-btn">
						<i class="fa fa-search"></i>
					</span>
				</div>
			</div>
		</div>
	</div>
	<div class="panel-body" style="padding-left: 10px;padding-right:10px;">
		<div id="dt_basic_wrapper" class="dataTables_wrapper form-inline dt-bootstrap table-condensed no-footer">
			<div class="dt-top-row"></div>
			<div class="dt-wrapper table-responsive">
				<table id="dt_basic" class="table table-striped table-bordered table-hover dataTable no-footer" rel="datatables"
					role="grid" aria-describedby="dt_basic_info">
					<thead>
						<tr role="row">
							<th class="sorting_asc" tabindex="0" aria-controls="dt_basic" rowspan="1" colspan="1" aria-sort="ascending"
								aria-label="商品编码: activate to sort column ascending" style="width: 174px;">商品编码</th>
							<th class="sorting" tabindex="0" aria-controls="dt_basic" rowspan="1" colspan="1"
								aria-label="商品名称: activate to sort column ascending" style="width: 174px;">商品名称</th>
							<th class="sorting" tabindex="0" aria-controls="dt_basic" rowspan="1" colspan="1"
								aria-label="规格: activate to sort column ascending" style="width: 165px;">规格</th>
							<th class="sorting" tabindex="0" aria-controls="dt_basic" rowspan="1" colspan="1"
								aria-label="单价: activate to sort column ascending" style="width: 127px;">单价</th>
							<th class="sorting" tabindex="0" aria-controls="dt_basic" rowspan="1" colspan="1"
								aria-label="库存: activate to sort column ascending" style="width: 109px;">库存</th>
							<th class="sorting" tabindex="0" aria-controls="dt_basic" rowspan="1" colspan="1"
								aria-label="已订购: activate to sort column ascending" style="width: 143px;">已订购</th>
						</tr>
					</thead>
					<tbody done8="1" done9="7">
						<tr role="row" class="odd">
							<td align="left" class="sorted sorting_1">
								1
							</td>
							<td align="left">
								苹果汁
							</td>
							<td align="left">
								每箱24瓶
							</td>
							<td align="right">
								￥18.00
							</td>
							<td align="left">
								39
							</td>
							<td align="left">
								0
							</td>
						</tr>
						<tr role="row" class="even">
							<td align="left" class="sorted sorting_1">
								2
							</td>
							<td align="left">
								牛奶
							</td>
							<td align="left">
								每箱24瓶
							</td>
							<td align="right">
								￥19.00
							</td>
							<td align="left">
								17
							</td>
							<td align="left">
								40
							</td>
						</tr>
						<tr role="row" class="odd">
							<td align="left" class="sorted sorting_1">
								3
							</td>
							<td align="left">
								蕃茄酱
							</td>
							<td align="left">
								每箱12瓶
							</td>
							<td align="right">
								￥10.00
							</td>
							<td align="left">
								13
							</td>
							<td align="left">
								70
							</td>
						</tr>
						<tr role="row" class="even">
							<td align="left" class="sorted sorting_1">
								4
							</td>
							<td align="left">
								盐
							</td>
							<td align="left">
								每箱12瓶
							</td>
							<td align="right">
								￥22.00
							</td>
							<td align="left">
								53
							</td>
							<td align="left">
								0
							</td>
						</tr>
						<tr role="row" class="odd">
							<td align="left" class="sorted sorting_1">
								5
							</td>
							<td align="left">
								麻油
							</td>
							<td align="left">
								每箱12瓶
							</td>
							<td align="right">
								￥21.35
							</td>
							<td align="left">
								0
							</td>
							<td align="left">
								0
							</td>
						</tr>
						<tr role="row" class="even">
							<td align="left" class="sorted sorting_1">
								6
							</td>
							<td align="left">
								酱油
							</td>
							<td align="left">
								每箱12瓶
							</td>
							<td align="right">
								￥25.00
							</td>
							<td align="left">
								120
							</td>
							<td align="left">
								0
							</td>
						</tr>
						<tr role="row" class="odd">
							<td align="left" class="sorted sorting_1">
								7
							</td>
							<td align="left">
								海鲜粉
							</td>
							<td align="left">
								每箱30盒
							</td>
							<td align="right">
								￥30.00
							</td>
							<td align="left">
								15
							</td>
							<td align="left">
								0
							</td>
						</tr>
						<tr role="row" class="even">
							<td align="left" class="sorted sorting_1">
								8
							</td>
							<td align="left">
								胡椒粉
							</td>
							<td align="left">
								每箱30盒
							</td>
							<td align="right">
								￥40.00
							</td>
							<td align="left">
								6
							</td>
							<td align="left">
								0
							</td>
						</tr>
						<tr role="row" class="odd">
							<td align="left" class="sorted sorting_1">
								9
							</td>
							<td align="left">
								鸡
							</td>
							<td align="left">
								每袋500克
							</td>
							<td align="right">
								￥97.00
							</td>
							<td align="left">
								29
							</td>
							<td align="left">
								0
							</td>
						</tr>
						<tr role="row" class="even">
							<td align="left" class="sorted sorting_1">
								10
							</td>
							<td align="left">
								蟹
							</td>
							<td align="left">
								每袋500克
							</td>
							<td align="right">
								￥31.00
							</td>
							<td align="left">
								31
							</td>
							<td align="left">
								0
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="dt-row dt-bottom-row">
				<div class="row">
					<div class="col-xs-12  col-sm-1">
						<div class="dataTables_length" id="dt_basic_length">
							<label>
								<select name="dt_basic_length" aria-controls="dt_basic" class="form-control input-sm">
									<option value="10">10</option>
									<option value="25">25</option>
									<option value="50">50</option>
									<option value="100">100</option>
								</select>
							</label>
						</div>
					</div>
					<div class="col-xs-12 col-sm-8">
						<div class="dataTables_paginate paging_full_numbers" id="dt_basic_paginate">
							<ul class="pagination">
								<li class="paginate_button first disabled" aria-controls="dt_basic" tabindex="0" id="dt_basic_first">
									<a href="#" data-toggle="tooltip" rel="tooltip" data-original-title="首页">
										<i class="fa fa-step-backward"></i>
									</a>
								</li>
								<li class="paginate_button previous disabled" aria-controls="dt_basic" tabindex="0" id="dt_basic_previous">
									<a href="#" data-toggle="tooltip" rel="tooltip" data-original-title="上一页">
										<i class="fa fa-backward"></i>
									</a>
								</li>
								<li class="paginate_button active" aria-controls="dt_basic" tabindex="0">
									<a href="#" data-original-title="" title="">1</a>
								</li>
								<li class="paginate_button " aria-controls="dt_basic" tabindex="0">
									<a href="#" data-original-title="" title="">2</a>
								</li>
								<li class="paginate_button " aria-controls="dt_basic" tabindex="0">
									<a href="#" data-original-title="" title="">3</a>
								</li>
								<li class="paginate_button next" aria-controls="dt_basic" tabindex="0" id="dt_basic_next">
									<a href="#" data-toggle="tooltip" rel="tooltip" data-original-title="下一页">
										<i class="fa fa-forward"></i>
									</a>
								</li>
								<li class="paginate_button last" aria-controls="dt_basic" tabindex="0" id="dt_basic_last">
									<a href="#" id="toolsss" data-toggle="tooltip" rel="tooltip" data-original-title="最后一页">
										<i class="fa fa-step-forward"></i>
									</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-xs-12 col-sm-3">
						<div class="dataTables_info" id="dt_basic_info" role="status" aria-live="polite">显示记录从1到10，总数 25 条</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
 
</@layout.mower_front>