<?php
  class Keke_witkey_service_order_class{
        public $_db;
        public $_tablename;
	    public $_dbop;
	    	 public $_id;  		 public $_uid; 		 public $_username; 		 public $_service_id; 		 public $_order_id; 		 public $_title; 		 public $_indus_pid; 		 public $_indus_id; 		 public $_content; 		 public $_file_ids; 		 public $_price; 		 public $_workfile; 
	    public $_cache_config = array ('is_cache' => 0, 'time' => 0 );
	    public $_replace=0;  
	    public $_where;      
	     function  keke_witkey_service_order_class(){ 			 $this->_db = new db_factory ( );			 $this->_dbop = $this->_db->create(DBTYPE);			 $this->_tablename = TABLEPRE."witkey_service_order";		 }	    
	    		public function getId(){			 return $this->_id ;		}		public function getUid(){			 return $this->_uid ;		}		public function getUsername(){			 return $this->_username ;		}		public function getService_id(){			 return $this->_service_id ;		}		public function getOrder_id(){			 return $this->_order_id ;		}		public function getTitle(){			 return $this->_title ;		}		public function getIndus_pid(){			 return $this->_indus_pid ;		}		public function getIndus_id(){			 return $this->_indus_id ;		}		public function getContent(){			 return $this->_content ;		}		public function getFile_ids(){			 return $this->_file_ids ;		}		public function getPrice(){			 return $this->_price ;		}		public function getWorkfile(){			 return $this->_workfile ;		}		public function getWhere(){			 return $this->_where ;		}		public function getCache_config() {			return $this->_cache_config;		}
	    		public function setId($value){ 			 $this->_id = $value;		}		public function setUid($value){ 			 $this->_uid = $value;		}		public function setUsername($value){ 			 $this->_username = $value;		}		public function setService_id($value){ 			 $this->_service_id = $value;		}		public function setOrder_id($value){ 			 $this->_order_id = $value;		}		public function setTitle($value){ 			 $this->_title = $value;		}		public function setIndus_pid($value){ 			 $this->_indus_pid = $value;		}		public function setIndus_id($value){ 			 $this->_indus_id = $value;		}		public function setContent($value){ 			 $this->_content = $value;		}		public function setFile_ids($value){ 			 $this->_file_ids = $value;		}		public function setPrice($value){ 			 $this->_price = $value;		}		public function setWorkfile($value){ 			 $this->_workfile = $value;		}		public function setWhere($value){ 			 $this->_where = $value;		}		public function setCache_config($_cache_config) {			 $this->_cache_config = $_cache_config; 		}
    	   public  function __set($property_name, $value) {
		 		$this->$property_name = $value; 
			}
			public function __get($property_name) { 
				if (isset ( $this->$property_name )) { 
					return $this->$property_name; 
				} else { 
					return null; 
				} 
			}
	    		function create_keke_witkey_service_order(){		 		 $data =  array(); 					if(!is_null($this->_id)){ 				 $data['id']=$this->_id;			}			if(!is_null($this->_uid)){ 				 $data['uid']=$this->_uid;			}			if(!is_null($this->_username)){ 				 $data['username']=$this->_username;			}			if(!is_null($this->_service_id)){ 				 $data['service_id']=$this->_service_id;			}			if(!is_null($this->_order_id)){ 				 $data['order_id']=$this->_order_id;			}			if(!is_null($this->_title)){ 				 $data['title']=$this->_title;			}			if(!is_null($this->_indus_pid)){ 				 $data['indus_pid']=$this->_indus_pid;			}			if(!is_null($this->_indus_id)){ 				 $data['indus_id']=$this->_indus_id;			}			if(!is_null($this->_content)){ 				 $data['content']=$this->_content;			}			if(!is_null($this->_file_ids)){ 				 $data['file_ids']=$this->_file_ids;			}			if(!is_null($this->_price)){ 				 $data['price']=$this->_price;			}			if(!is_null($this->_workfile)){ 				 $data['workfile']=$this->_workfile;			}			 return $this->_id = $this->_db->inserttable($this->_tablename,$data,1,$this->_replace); 		 } 
	    		function edit_keke_witkey_service_order(){ 		 		 $data =  array();  					if(!is_null($this->_id)){ 				 $data['id']=$this->_id;			}			if(!is_null($this->_uid)){ 				 $data['uid']=$this->_uid;			}			if(!is_null($this->_username)){ 				 $data['username']=$this->_username;			}			if(!is_null($this->_service_id)){ 				 $data['service_id']=$this->_service_id;			}			if(!is_null($this->_order_id)){ 				 $data['order_id']=$this->_order_id;			}			if(!is_null($this->_title)){ 				 $data['title']=$this->_title;			}			if(!is_null($this->_indus_pid)){ 				 $data['indus_pid']=$this->_indus_pid;			}			if(!is_null($this->_indus_id)){ 				 $data['indus_id']=$this->_indus_id;			}			if(!is_null($this->_content)){ 				 $data['content']=$this->_content;			}			if(!is_null($this->_file_ids)){ 				 $data['file_ids']=$this->_file_ids;			}			if(!is_null($this->_price)){ 				 $data['price']=$this->_price;			}			if(!is_null($this->_workfile)){ 				 $data['workfile']=$this->_workfile;			}			if($this->_where){ 				 return $this->_db->updatetable($this->_tablename,$data,$this->getWhere()); 			 } 			 else{ 				 $where = array('id' => $this->_id); 				 return $this->_db->updatetable($this->_tablename,$data,$where); 			} 		 } 
	    		function query_keke_witkey_service_order($is_cache=0, $cache_time=0){ 			 if($this->_where){ 				 $sql = "select * from $this->_tablename where ".$this->_where; 			 } 			 else{ 				 $sql = "select * from $this->_tablename"; 			 } 			if ($is_cache) {			 $this->_cache_config ['is_cache'] = $is_cache;			}			if ($cache_time) {			 $this->_cache_config ['time'] = $cache_time;			 }			 if ($this->_cache_config ['is_cache']) {			     if (CACHE_TYPE) {					 $keke_cache = new keke_cache_class ( CACHE_TYPE );					 $id = $this->_tablename . ($this->_where?"_" .substr(md5 ( $this->_where ),0,6):'');						$data = $keke_cache->get ( $id );							if ($data) {								return $data; 							} else { 								$res = $this->_dbop->query ( $sql ); 								$keke_cache->set ( $id, $res,$this->_cache_config['time'] ); 					 			$this->_where = ""; 								return $res; 							} 						} 			 }else{			 	$this->_where = ""; 				return  $this->_dbop->query ( $sql ); 			 }		 } 
	    		function count_keke_witkey_service_order(){ 			 if($this->_where){ 				 $sql = "select count(*) as count from $this->_tablename where ".$this->_where; 			 } 			 else{ 				 $sql = "select count(*) as count from $this->_tablename"; 			 } 			 $this->_where = ""; 			 return $this->_dbop->getCount($sql); 		 } 
	    		function del_keke_witkey_service_order(){ 			 if($this->_where){ 				 $sql = "delete from $this->_tablename where ".$this->_where; 			 } 			 else{ 				 $sql = "delete from $this->_tablename where id = $this->_id "; 			 } 			 $this->_where = ""; 			 return $this->_dbop->execute($sql); 		 } 
   }
 ?>