<?php 
/**
 *  @content 关于中标服务商添加附加上传 （包括供方上传附件，需方下载附件）
 *  @author gaudi
 *  @time:2015-07-25
 *  /

1./ssc/task/tender/tpl/default/work.htm
添加：
<div class="form-group">
<label for="upload" class="col-sm-3 control-label" style="clear:both; width:368px;">上传报价单(<font color='red'>最多5个附件，每个附件不得超过{$basic_config['max_size']}M。</font>)</label>
<div class="col-sm-6"  style="clear:both;">
  <p class="form-control-static">
    <input type="file" id="upload" name="upload">
    <input type="hidden"  name="file_ids" id="fileid"  class="form-control" value="{$arrPubInfo['file_ids']}">
  </p>
</div>
<script src="static/js/uploadify/jquery.uploadify.min.js?r={RANDOM_PARA}" type="text/javascript"></script>
<link href="static/js/uploadify/uploadify.css" rel="stylesheet">
<script type="text/javascript">
                   $(function(){
                     setTimeout(function(){
                        uploadify({
                          text:'上传附件',
                          auto:true,
                          hide:false,
                          exts:'{$strExtTypes}',
                          size:"{$basic_config['max_size']}MB",
                          limit:5
                          },{
        objType:'quotation',
        sessionId:sessionId
                          },uploadResponse);
                    },500);
                    });
    function uploadResponse(json){
    }
</script>
</div>


2./ssc/task/tender/lib/tender_task_class.php
添加：
public $_file_obj;
$this->_file_obj = new Keke_witkey_file_class ();
function set_task_bid_file(){
	
}

3./ssc/lib/table/Keke_witkey_task_bid_class.php
添加：
public $_bid_file; 
public function setBid_file(){
	 return $this->_bid_file ;
}

public function getBid_file(){
	 return $this->_bid_file ;
}

if(!is_null($this->_bid_file)){ 
	 $data['bid_file']=$this->bid_file;
}

4./ssc/control/taskhandle.php
case "taskBidFile":
		if (strtoupper ( CHARSET ) == 'GBK') {
				$_POST = kekezu::utftogbk($_POST );
		}
		$arrBidInfo = $objTask->get_bid_info ();
		$resText = $objTask->set_task_bid_file ( $_POST, $arrBidInfo['bid_id'] );
		break;

5./ssc/control/ajax/upload.php
elseif($fileType =='sys'&&$objType =='quotation'){	
		$pathDir .= $fileType.'/'.$objType.'/';
}

6./ssc/lib/table/Keke_witkey_file_class.php
添加：
public $_bid_id; 
public function setBid_id(){
	 return $this->_bid_id ;
}

public function getBid_id(){
	 return $this->_bid_id ;
}

if(!is_null($this->_bid_id)){ 
	 $data['bid_id']=$this->bid_id;
}

7. /ssc/lib/sys/Keke_task_class.php
// 2015-07-26   添加
	public function get_bid_file() {
		return kekezu::get_table_data ( "*", "witkey_file", " obj_type = 'task' and work_id='0' and task_id = '" . $this->_task_id . "'", "", "", "", "file_id", 3600 );
	}

8./ssc/task/tender/control/index.php 
//2015-07-26
$arrTaskBidInfo = db_factory::get_one("select bid_id from ".TABLEPRE."witkey_task_bid as a where bid_status=4 and task_id=".intval($id));
$arrBidFiles = $objTask->get_bid_file ($arrTaskBidInfo);







?>