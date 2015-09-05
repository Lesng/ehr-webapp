<@layout.mower_front title="Dashboard" scripts="front/app/dashboard_mower.js" version="[$Revision: 4511 $]" require="knockoutjs,flot">
<div class="row">
	<div class="col-md-9">
		<div class="panel panel-widget light bordered">
            <div class="panel-heading">
                <div class="caption">
                    <i class="fa fa-pencil-square-o"></i>绩效考核进度
                </div>
            </div>
            <div class="panel-body">
                <div class="form-wizard">
                    <ul class="nav nav-pills nav-justified steps-task">
                        <li class="active">
                            <a class="dashboard-stat dashboard-stat-light blue-soft " href="javascript:;">
                                <div class="visual">
                                    <i class="fa fa fa-pencil"></i>
                                </div>
                                <div class="details">
                                    <div class="number">
                                        4
                                    </div>
                                    <div class="desc">
                                        合约制定
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a class="dashboard-stat dashboard-stat-light blue-soft" href="javascript:;">
                                <div class="visual">
                                    <i class="fa fa-check"></i>
                                </div>
                                <div class="details">
                                    <div class="number">
                                        5
                                    </div>
                                    <div class="desc">
                                        合约评分
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a class="dashboard-stat dashboard-stat-light blue-soft" href="javascript:;">
                                <div class="visual">
                                    <i class="fa fa-search"></i>
                                </div>
                                <div class="details">
                                    <div class="number">
                                        3
                                    </div>
                                    <div class="desc">
                                        合约审核
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a class="dashboard-stat dashboard-stat-light blue-soft" href="javascript:;">
                                <div class="visual">
                                    <i class="fa fa-user"></i>
                                </div>
                                <div class="details">
                                    <div class="number">
                                        1
                                    </div>
                                    <div class="desc">
                                        申诉处理
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ul>
                    <ul class="nav nav-pills nav-justified steps">
                        <li class="active">
                            <a href="#tab1" data-toggle="tab" class="step" aria-expanded="true">
                                <div class="number">
                                    1 </div>
                                <div class="desc">
                                    <i class="fa fa-check"></i>步骤1 </div>
                            </a>
                        </li>
                        <li>
                            <a href="#tab2" data-toggle="tab" class="step">
                                <div class="number">
                                    2 </div>
                                <div class="desc">
                                    <i class="fa fa-check"></i> 步骤2 </div>
                            </a>
                        </li>
                        <li>
                            <a href="#tab3" data-toggle="tab" class="step active">
                                <div class="number">
                                    3 </div>
                                <div class="desc">
                                    <i class="fa fa-check"></i> 步骤3 </div>
                            </a>
                        </li>
                        <li>
                            <a href="#tab4" data-toggle="tab" class="step">
                                <div class="number">
                                    4 </div>
                                <div class="desc">
                                    <i class="fa fa-check"></i> 步骤4 </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
	</div>
	<div class="col-md-3">
        <div id="datetimepicker"></div>
    </div>
</div>
<div class="row">
    <div class="col-md-9">
        <div class="panel panel-widget light bordered">
            <div class="panel-heading">
                <div class="caption">
                    <i class="fa fa-line-chart"></i>图表数据
                </div>
            </div>
            <div class="panel-body">
                <div id="selectable-chart" style="height: 210px; padding: 0px; position: relative; overflow:hidden;"><canvas class="flot-base" width="752" height="300" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 752px; height: 300px;"></canvas><div class="flot-text" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; font-size: smaller; color: rgb(84, 84, 84);"><div class="flot-x-axis flot-x1-axis xAxis x1Axis" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;"><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 94px; top: 282px; left: 5px; text-align: center;">1990</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 94px; top: 282px; left: 108px; text-align: center;">1992</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 94px; top: 282px; left: 210px; text-align: center;">1994</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 94px; top: 282px; left: 313px; text-align: center;">1996</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 94px; top: 282px; left: 416px; text-align: center;">1998</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 94px; top: 282px; left: 519px; text-align: center;">2000</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 94px; top: 282px; left: 621px; text-align: center;">2002</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 94px; top: 282px; left: 724px; text-align: center;">2004</div></div><div class="flot-y-axis flot-y1-axis yAxis y1Axis" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;"><div class="flot-tick-label tickLabel" style="position: absolute; top: 268px; left: 7px; text-align: right;">0</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 214px; left: 7px; text-align: right;">5</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 161px; left: 0px; text-align: right;">10</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 107px; left: 0px; text-align: right;">15</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 54px; left: 0px; text-align: right;">20</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 0px; left: 0px; text-align: right;">25</div></div></div><canvas class="flot-overlay" width="752" height="300" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 752px; height: 300px;"></canvas><div class="legend"><div style="position: absolute; width: 210px; height: 18px; top: 14px; right: 19px; opacity: 0.85; background-color: rgb(255, 255, 255);"> </div><table style="position:absolute;top:14px;right:19px;;font-size:smaller;color:#545454"><tbody><tr><td class="legendColorBox"><div style="border:1px solid #ccc;padding:1px"><div style="width:4px;height:0;border:5px solid #0072c6;overflow:hidden"></div></div></td><td class="legendLabel">Windows</td><td class="legendColorBox"><div style="border:1px solid #ccc;padding:1px"><div style="width:4px;height:0;border:5px solid #ffce55;overflow:hidden"></div></div></td><td class="legendLabel">Linux</td><td class="legendColorBox"><div style="border:1px solid #ccc;padding:1px"><div style="width:4px;height:0;border:5px solid #fb6e52;overflow:hidden"></div></div></td><td class="legendLabel">Mac OS</td><td class="legendColorBox"><div style="border:1px solid #ccc;padding:1px"><div style="width:4px;height:0;border:5px solid #a0d468;overflow:hidden"></div></div></td><td class="legendLabel">DOS</td></tr></tbody></table></div></div>
            </div>
        </div>
    </div>
    <div class="col-md-3">
        <div class="panel panel-widget light">
            <div class="panel-heading">
                <div class="caption">
                    <i class="fa fa-comments"></i>公告
                </div>
            </div>
            <div class="panel-body">
            	<span>
                    习近平指出：“历史是现实的根源，任何一个国家的今天都来自昨天。只有了解一个国家从哪里来，才能弄懂这个国家今天怎么会是这样而不是那样，也才能搞清楚这个国家未来会往哪里去和不会往哪里去。”
            	</span>
            	<span>
        	昨天已经成为历史，已经不能改变，但我们不能忘记。我们应该尊重历史、维护历史，因为我们从历史走来，它是我们存在的依据和理由，它是我们成长的沃土和甘露。
            	</span>
            </div>
        </div>
    </div>
</div>
 
</@layout.mower_front>