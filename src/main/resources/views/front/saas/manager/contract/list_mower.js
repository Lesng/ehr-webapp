var PerformanceContractList = (function($) {

	// private functions & variables
	var code = 'contract-list';
	var table = '#list-' + code;
	var actions = '#actions-list-' + code;

	// 编辑按钮
	var _onEditAction = function() {
		$('#edit-action-' + code).click(function(e) {
			var ids = $(table).DataTable().selectedRowIds();
			if (ids.length > 0) {
				$(this).trigger({
					type : 'push.mu.breadcrumb',
					page : base + '/admin/saas/manager/contract/edit/' + ids[0]
				})
			} else {
				MessageBox.info('请选择一条记录编辑.');
			}
		});
	};

	// 删除按钮
	var _oDeleteAction = function() {
		$('#delete-action-' + code).click(function(e) {
			var row = $(table).DataTable().selectedRows();

			if (row && row.length > 0) {
				ModalBox.confirm('您确定要删除公司' + '【' + row[0].name + '】吗？', function(result) {
					if (result) {
						$.post(base + '/admin/saas/manager/contract/delete/' + row[0].id, function(data) {
							if (data.success) {
								$(table).DataTable().ajax.reload();
							} else {
								AlertBox.error(data.exceptionMessage);
							}
						});
					}
				});
			} else {
				MessageBox.info('请选择一条记录删除.');
			}
		});
	};

	var _onSearchAction = function() {
		$('#search-btn-' + code).click(function(e) {
			var dt = $(table).DataTable();

			dt.ajax.setParams({
				q : $('#search-text-' + code).val()
			});
			dt.ajax.reload();
		});

		$('#search-text-' + code).keypress(function(e) {
			// 回车键事件
			if (e.which == 13) {
				$('#search-btn-' + code).click();
			}
		});
	};

	var _applyBindings = function() {
		var actionsViewModel = ko.mapping.fromJS({
			selectedRow : false
		});

		$(table).click(function() {
			actionsViewModel.selectedRow($(table).DataTable().selectedRowIds().length > 0);
		});
		ko.applyBindings(actionsViewModel, $(actions)[0]);
	}

	// public functions
	return {
		// main function
		init : function() {
			// initialize here something.
			_oDeleteAction();
			_onEditAction();
			_onSearchAction();
			_applyBindings();
		}
	};
}(jQuery));

$(window).load(function() {
	PerformanceContractList.init();
});
