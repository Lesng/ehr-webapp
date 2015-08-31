
var RegistedCompanyList = (function($) {

    // private functions & variables
    var code = 'company-list';
    var table = '#list-' + code;
    
    // 编辑按钮
    var _onEditAction = function() {
	    $('#edit-action-' + code).click(function(e) {
	    	var ids = $(table).DataTable().selectedRowIds();
	    	if (ids.length > 0) {
		    	$(this).trigger({
		    		type :'push.mu.breadcrumb',
		    		page : base + '/admin/saas/manager/company/edit/' + ids[0]
		    	})
	        } else {
	            MessageBox.error('请选择一条记录编辑.');
	        }
	    });
    };

    // 删除按钮
    var _oDeleteAction = function() {
    	$('#delete-action-' + code).click(function(e) {
	        var row = $(table).DataTable().selectedRows();
	
	        if (row && row.length > 0) {
	            ModalBox.confirm('您确定要删除公司' + '【' + row[0].appId + '】吗？', function(result) {
	                if (result) {
	                    $.post(base + '/admin/saas/manager/company/delete/' + row[0].id, function(data) {
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

    // public functions
    return {
        //main function
        init: function() {
            //initialize here something.
            _oDeleteAction();
            _onEditAction();
        }
    };
}(jQuery));

$(function() {
    RegistedCompanyList.init();
});