<?php
/**
 * @copyright keke-tech
 * @author hr
 * @version v 2.0
 * @date 2012-1-15 下午4:26:34
 * @encoding GBK
 */
$lang['cn'] = array(
		//public
		'kppw_info' => P_NAME.KEKE_VERSION.'安装向导',
		'copyright' => 'Powered by 武汉客客信息技术有限公司&copy;'.date("Y",time()),
		//nav
		'install_agreement' => '安装协议',
		'evn_etc_test' => '环境，文件权限，函数等检测',
		'admin_form_input' => '表单，数据库信息，管理员账号',
		//step 1_ start lang
		'has_been_installed' => '您已经安装过 客客威客程序 KPPW '.KEKE_VERSION.'版，请删除data目录下的 keke_kppw_install.lck 文件，重新安装',
		'main_sql_file_does_not_exist' => '安装目录下的data目录下的keke_kppw_install.sql文件不存在，安装程序中止',
		'select_l' => '选择语言',
		'' => '',
		//step 2_ check environment
		'test_env' => '运行环境检测检测',
		'detec_env' => '环境检测',
		'test_items' => '检测项目',
		'kppw_require' => 'KPPW 所需配置',
		'kppw_best' => 'KPPW 最佳',
		'your_server' => '当前服务器',
		'op_system' => '操作系统',
		'noset' => '不限制',
		'php_version' => 'PHP 版本',
		'attachment_upload' => '附件上传',
		'gd_version' => 'GD 库',
		'disk_space' => '磁盘空间',
		'directory_test' => '目录、文件权限检查',
		'dir_or_file' => '目录文件',
		'r_status' => '所需状态',
		'current_status' => '当前状态',
		'writable' => '可写',
		'n_writable' => '不可写',
		'not_exist' => '不存在',
		'func_test' => '函数依赖性检查',
		'func_name' => '函数名称',
		'check_result' => '检查结果',
		'suggest' => '建议',
		'yes' => '支持',
		'no' => '不支持',
		'nothing' => '无',
		'return' => '返回上一步',
		//step 3_1 database form
		//tpl
		'form_and_so_on_check' => '表单，数据库信息，管理员账号',
		'fillin_db_info' => '填写数据库信息',
		'website' => '网站地址',
		'website_tips' => '站点的url',
		'db_server' => '数据库服务器',
		'db_server_tips' => '数据库服务器地址, 一般为 localhost',
		'db_name' => '数据库名',
		'db_name_tips' => '请输入数据库名',
		'db_name_error' => '请输入数据库名',
		'db_username' => '数据用户名',
		'db_username_tips' => '请输入数据库用户名',
		'db_username_error' => '请输入数据库用户名',
		'db_password' => '数据库密码',
		'db_password_tips' => '请输入数据库密码',
		'db_password_error' => '请输入数据库用户密码',
		'table_pre' => '数据表前缀',
		'table_pre_tips' => '同一数据库运行多个系统时，请修改前缀',
		'cover_db_tips' => '数据库已存在,是否覆盖安装(同名的表将会被覆盖)',
		'cover_db' => '覆盖安装',
		'fillin_admin_info' => '填写管理员信息',
		'admin_account' => '管理员账号',
		'admin_account_required' => '管理员账号必填',
		'admin_account_tips' => '请输入管理员账号(如需整合UCenter，请确保与UC管理员账号相同)',
		'admin_password' => '管理员密码',
		'admin_password_required' => '请输入管理员密码',
		'admin_password_tips' => '请输入管理员密码,长度至少为6',
		'admin_password_again' => '重复密码',
		'admin_password_again_error' => '2次密码不一致',
		'admin_password_again_tips' => '请重复输入管理员密码',
		'admin_email' => '管理员Email',
		'admin_email_required' => '请输入管理员Email',
		'admin_email_wrong' => '邮箱格式不正确',
		'initialize_db' => '初始化数据库',
		'clear_data' => '不带演示数据',
		'with_data_db' => '带有演示数据',
		'sbt' => '提交',
		'alert_info' => '请选择是否覆盖安装,或者修改数据库名',
		//php page
		'dbhost_cannot_be_null' => '数据库服务地址不可为空',
		'dbname_cannot_be_null' => '数据库名不可为空',
		'dbaccount_cannot_be_null' => '数据库账号不可为空',
		'dbpwd_cannot_be_null' => '数据库密码不可为空',
		'admin_account_cannot_be_null' => '管理员账号不可为空',
		'admin_pwd_cannot_be_null' => '管理员密码不可为空',
		'password_different_wrong' => '2次密码不一致',
		'select_init_type' => '请选择数据库初始化安装类型',
		'error_formate' => '数据库名格式不正确',
		'table_pre_error' => '表前缀格式不正确',
		'connect_error_login_failed' => '数据库连接出错,请检查用户名、密码',
		'connect_error' => '数据库连接出错',
		//step 3_2 execute sql sentences
		'in_detail_process' => '详细安装过程',
		'installing' => '正在安装中',
		//step 4 finally
		'install_complete' => '安装完成 ',
		'congratulations' => '恭喜您,'.P_NAME.KEKE_VERSION.'《客客出品专业威客》安装成功！',
		'complete_tips' => '安装完后，请仔细阅读 我们的配置说明 如有需要修改的，修改完到后台更新下缓存。',
		'delete_the_install_folder' => '特别提醒：为了数据安全，安装完毕后，请删除安装目录。',
		'no_data_version'=>'纯净版（不带包括文章的演示数据 一般不推荐使用）',
		//ok finish
);
$lang['en'] = array(
		// Public
		'kppw_info' => P_NAME.KEKE_VERSION. 'Setup Wizard',
		'copyright' => 'Powered by Information Technology Co., Ltd. Wuhan passenger off &copy; 2012',
		// Nav
		'install_agreement' => 'Installation Agreement',
		'evn_etc_test' => 'Environment,etc testing',
		'admin_form_input' => 'Forms,database,account',
		'has_been_installed' => 'passing-off you have installed the program Witkey KPPW'. KEKE_VERSION. 'Version, please delete the data directory keke_kppw_install.lck files, re-install',
		'main_sql_file_does_not_exist' => 'installation directory under the data directory keke_kppw_install.sql file does not exist, the installation program termination',
		'select_l' => 'Select Language',
		''=>'',
		// Step 2_ check environment
		'test_env' => 'test environment detection',
		'detec_env' => 'environmental testing',
		'test_items' => 'test items',
		'kppw_require' => 'KPPW desired configuration',
		'kppw_best' => 'KPPW best',
		'your_server' => 'current server',
		'op_system' => 'operating system',
		'noset' => 'No restrictions',
		'php_version' => 'PHP version',
		'attachment_upload' => 'Upload attachment',
		'gd_version' => 'GD library',
		'disk_space' => 'disk space',
		'directory_test' => 'directory, file permissions check',
		'dir_or_file' => 'catalog file',
		'r_status' => 'desired state',
		'current_status' => 'current state',
		'writable' => 'writable',
		'n_writable' => 'not writable',
		'not_exist' => 'does not exist',
		'func_test' => 'function dependency check',
		'func_name' => 'function name',
		'check_result' => 'test results',
		'suggest' => 'recommendations',
		'yes' => 'support',
		'no' => 'not supported',
		'nothing' => 'no',
		'return' => 'go back',
		// Step 3_1 database form
		// Tpl
		'form_and_so_on_check' => 'forms, database information, the administrator account',
		'fillin_db_info' => 'fill in database information',
		'website' => 'Web address',
		'website_tips' => 'site url',
		'db_server' => 'database server',
		'db_server_tips' => 'Database server address, usually localhost',
		'db_name' => 'database name',
		'db_name_tips' => 'Please enter the database name',
		'db_name_error' => 'Please enter the database name',
		'db_username' => 'user data',
		'db_username_tips' => 'Please enter the database user name',
		'db_username_error' => 'Please enter the database user name',
		'db_password' => 'Database Password',
		'db_password_tips' => 'Please enter the database password',
		'db_password_error' => 'Please enter the database user password',
		'table_pre' => 'table prefix',
		'table_pre_tips' => 'multiple systems running the same database, modify the prefix',
		'cover_db_tips' => 'Database already exists, covering the installation (the table will be covered by the same name)',
		'cover_db' => 'cover installation',
		'fillin_admin_info' => 'fill in the administrator information',
		'admin_account' => 'administrator account',
		'admin_account_required' => 'administrator account required',
		'admin_account_tips' => 'Please enter the administrator account',
		'admin_password' => 'administrator password',
		'admin_password_required' => 'Please enter the administrator password',
		'admin_password_tips' => 'Please enter the administrator password length of at least 6',
		'admin_password_again' => 'repeat password',
		'admin_password_again_error' => '2 times passwords do not match ',
		'admin_password_again_tips' => 'Please re-enter the administrator password',
		'admin_email' => 'Administrator Email',
		'admin_email_wrong' => 'mailbox format is not correct',
		'initialize_db' => 'Initialize database',
		'clear_data' => 'without demo data',
		'with_data_db' => 'with the presentation of data',
		'sbt' => 'submit',
		'alert_info' => 'Please select whether to cover the installation, or modify the database name',
		// Php page
		'dbhost_cannot_be_null' => 'database service address can not be empty',
		'dbname_cannot_be_null' => 'database name can not be empty',
		'dbaccount_cannot_be_null' => 'database account can not be empty',
		'dbpwd_cannot_be_null' => 'database password can not be empty',
		'admin_account_cannot_be_null' => 'administrator account can not be empty',
		'admin_pwd_cannot_be_null' => 'administrator password can not be empty',
		'password_different_wrong' => '2 times passwords do not match ',
		'select_init_type' => 'Please select the type of database initialization install',
		'error_formate' => 'database name format is incorrect',
		'table_pre_error' => 'Table prefix format is not correct',
		'connect_error_login_failed' => 'Database connection error, check the user name and password',
		'connect_error' => 'Database connection error',
		'no_data_version'=>'No Demo Data',
		// Step 3_2 execute sql sentences
		'iIn_detail_process' => 'details the installation process',
		'installing' => 'being installed',
		// Step 4 finally
		'install_complete' => 'installation',
		'congratulations' =>' Congratulations, '.P_NAME.KEKE_VERSION.' "off-off-off professional prestige" Installation successful! ',
		'complete_tips' =>' After the installation, please carefully read the description of our configuration changes, if necessary, modify the back end to update the next cache. ',
		'celete_the_install_folder' => 'Special note: For data security, the installation is complete, remove the installation directory. ',
);
$lang['tw'] = array(
				//public
		'kppw_info' => P_NAME.KEKE_VERSION.'安装向导',
		'copyright' => 'Powered by 武汉客客信息技术有限公司&copy;2012',
		//nav
		'install_agreement' => '安装协议',
		'evn_etc_test' => '环境，文件权限，函数等检测',
		'admin_form_input' => '表单，数据库信息，管理员账号',
		//step 1_ start lang
		'has_been_installed' => '您已经安装过 客客威客程序 KPPW '.KEKE_VERSION.'版，请删除data目录下的 keke_kppw_install.lck 文件，重新安装',
		'main_sql_file_does_not_exist' => '安装目录下的data目录下的keke_kppw_install.sql文件不存在，安装程序中止',
		'select_l' => '选择语言',
		'' => '',
		//step 2_ check environment
		'test_env' => '运行环境检测检测',
		'detec_env' => '环境检测',
		'test_items' => '检测项目',
		'kppw_require' => 'KPPW 所需配置',
		'kppw_best' => 'KPPW 最佳',
		'your_server' => '当前服务器',
		'op_system' => '操作系统',
		'noset' => '不限制',
		'php_version' => 'PHP 版本',
		'attachment_upload' => '附件上传',
		'gd_version' => 'GD 库',
		'disk_space' => '磁盘空间',
		'directory_test' => '目录、文件权限检查',
		'dir_or_file' => '目录文件',
		'r_status' => '所需状态',
		'current_status' => '当前状态',
		'writable' => '可写',
		'n_writable' => '不可写',
		'not_exist' => '不存在',
		'func_test' => '函数依赖性检查',
		'func_name' => '函数名称',
		'check_result' => '检查结果',
		'suggest' => '建议',
		'yes' => '支持',
		'no' => '不支持',
		'nothing' => '无',
		'return' => '返回上一步',
		//step 3_1 database form
		//tpl
		'form_and_so_on_check' => '表单，数据库信息，管理员账号',
		'fillin_db_info' => '填写数据库信息',
		'website' => '网站地址',
		'website_tips' => '站点的url',
		'db_server' => '数据库服务器',
		'db_server_tips' => '数据库服务器地址, 一般为 localhost',
		'db_name' => '数据库名',
		'db_name_tips' => '请输入数据库名',
		'db_name_error' => '请输入数据库名',
		'db_username' => '数据用户名',
		'db_username_tips' => '请输入数据库用户名',
		'db_username_error' => '请输入数据库用户名',
		'db_password' => '数据库密码',
		'db_password_tips' => '请输入数据库密码',
		'db_password_error' => '请输入数据库用户密码',
		'table_pre' => '数据表前缀',
		'table_pre_tips' => '同一数据库运行多个系统时，请修改前缀',
		'cover_db_tips' => '数据库已存在,是否覆盖安装(同名的表将会被覆盖)',
		'cover_db' => '覆盖安装',
		'fillin_admin_info' => '填写管理员信息',
		'admin_account' => '管理员账号',
		'admin_account_required' => '管理员账号必填',
		'admin_account_tips' => '请输入管理员账号',
		'admin_password' => '管理员密码',
		'admin_password_required' => '请输入管理员密码',
		'admin_password_tips' => '请输入管理员密码,长度至少为6',
		'admin_password_again' => '重复密码',
		'admin_password_again_error' => '2次密码不一致',
		'admin_password_again_tips' => '请重复输入管理员密码',
		'admin_email' => '管理员Email',
		'admin_email_wrong' => '邮箱格式不正确',
		'initialize_db' => '初始化数据库',
		'clear_data' => '不带演示数据',
		'with_data_db' => '带有演示数据',
		'sbt' => '提交',
		'alert_info' => '请选择是否覆盖安装,或者修改数据库名',
		'no_data_version'=>'纯净版（不带包括文章的演示数据 一般不推荐使用）',
		//php page
		'dbhost_cannot_be_null' => '数据库服务地址不可为空',
		'dbname_cannot_be_null' => '数据库名不可为空',
		'dbaccount_cannot_be_null' => '数据库账号不可为空',
		'dbpwd_cannot_be_null' => '数据库密码不可为空',
		'admin_account_cannot_be_null' => '管理员账号不可为空',
		'admin_pwd_cannot_be_null' => '管理员密码不可为空',
		'password_different_wrong' => '2次密码不一致',
		'select_init_type' => '请选择数据库初始化安装类型',
		'error_formate' => '数据库名格式不正确',
		'table_pre_error' => '表前缀格式不正确',
		'connect_error_login_failed' => '数据库连接出错,请检查用户名、密码',
		'connect_error' => '数据库连接出错',
		//step 3_2 execute sql sentences
		'in_detail_process' => '详细安装过程',
		'installing' => '正在安装中',
		//step 4 finally
		'install_complete' => '安装完成 ',
		'congratulations' => '恭喜您,'.P_NAME.KEKE_VERSION.'《客客出品专业威客》安装成功！',
		'complete_tips' => '安装完后，请仔细阅读 我们的配置说明 如有需要修改的，修改完到后台更新下缓存。',
		'delete_the_install_folder' => '特别提醒：为了数据安全，安装完毕后，请删除安装目录。',
		//ok finish
);