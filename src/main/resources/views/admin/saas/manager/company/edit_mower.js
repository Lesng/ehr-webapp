var RegistedCompanyForm = (function($) {
	var code = 'edit-company', parentCode = 'company-list', $form = $('#form-' + code);

	var viewModel = function(data) {
		var self = this;

		ko.mapping.fromJS(data, {}, self);

	};

	return {
		init : function() {
			// 初始化界面数据
			var currentId = $form.attr('item-id');
			if (!currentId) {
				// -1 means server return add object struct
				currentId = -1;
			}
			$.getJSON(base + '/admin/saas/manager/company/get/' + currentId, function(data) {
				ko.applyBindings(new viewModel(data.returnObject), $form[0]);
			});
			
			// 绑定按钮事件
			$('#save-action-' + code).click(function(e) {
				var that = $(this);
				$form.ajaxValidSubmit({
					success : function(data) {
						MessageBox.success('保存成功');
						that.trigger('pop.mu.breadcrumb');
						$('#list-' + parentCode).DataTable().ajax.reload();
					},
					error : function() {
					}
				});
			})
			
			$('#gen-key-action').click(function(e) {
				// TODO 产生公钥和私钥
			});
		}
	};
}(jQuery));

$(function() {
	RegistedCompanyForm.init();
});
