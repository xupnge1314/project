<?php

class kevinlogin extends control {

	public function __construct() {
		parent::__construct();
	}

	public function ajaxGetGroupPrivsByMethod($module, $method) {
		$groupObjs		 = $this->kevinlogin->getGroupPrivsByMethod($module, $method);
		$groupArray		 = array_keys($groupObjs);
		$chosenGroupStr	 = implode(',', $groupArray);
		die(html::select('groups[]', $this->loadModel('group')->getPairs(), $chosenGroupStr, "multiple='multiple' style='height:200px' class='form-control'"));
	}

	public function defaultpwd($recTotal = 0, $recPerPage = 20, $pageID = 1) {
		/* Load pager. */
		$this->app->loadClass('pager', $static		 = true);
		if ($this->app->getViewType() == 'mhtml')
			$recPerPage	 = 10;
		$pager		 = pager::init($recTotal, $recPerPage, $pageID);

		$passwords = $this->kevinlogin->getPasswordList($pager);
		if (!empty($_POST)) {
			$this->kevinlogin->updateDefaultPwd();
			die(js::reload('parent'));
		}
		$this->view->title		 = $this->lang->kevinlogin->common . $this->lang->colon . $this->lang->kevinlogin->defaultpwd;
		$this->view->position[]	 = $this->lang->kevinlogin->defaultpwd;
		$this->view->pager		 = $pager;
		$this->view->passwords	 = $passwords;
		$this->view->controlType = 'defaultpwd';
		$this->display();
	}

	public function delete($id) {

		$this->dao->delete()->from(TABLE_DEFAULTPASSWORD)->where('id')->eq($id)->exec();

		die(js::reload('parent'));
	}

	/**
	 * Manage privleges of a group. 
	 * 
	 * @param  int    $groupID 
	 * @access public
	 * @return void
	 */
	public function managePriv() {
		$menu = '';
		$this->loadModel('group');
		foreach ($this->lang->resource as $moduleName => $action) {
			if ($this->group->checkMenuModule($menu, $moduleName)) {
				$this->app->loadLang($moduleName);
			}
		}

		if (!empty($_POST)) {
			$this->kevinlogin->updatePrivOfGroup();
			die(js::reload('parent'));
		}
		$this->view->title		 = $this->lang->company->common . $this->lang->colon . $this->lang->kevinlogin->managepriv;
		$this->view->position[]	 = $this->lang->kevinlogin->managepriv;

		foreach ($this->lang->resource as $module => $moduleActions) {
			$modules[$module] = $this->lang->$module->common;
			foreach ($moduleActions as $action) {
				$actions[$module][$action] = $this->lang->$module->$action;
			}
		}
		$this->view->groups		 = $this->group->getPairs();
		$this->view->modules	 = $modules;
		$this->view->actions	 = $actions;
		$this->view->controlType = 'managepriv';

		$this->display();
	}

	/**
	 * Unlock a user.
	 * 
	 * @param  int    $account 
	 * @param  string $confirm 
	 * @access public
	 * @return void
	 */
	public function unlock($account, $confirm = 'no') {
		if ($confirm == 'no') {
			die(js::confirm($this->lang->kevinlogin->confirmUnlock, $this->createLink('kevinlogin', 'unlock', "account=$account&confirm=yes")));
		} else {
			$this->loadModel('user')->cleanLocked($account);
			die(js::locate($this->createLink('kevinhours', 'browse'), 'parent'));
		}
	}

	public function userLock($account, $confirm = 'no') {
		if (strpos($this->app->company->admins, ",$account,") === false) {
			if ($confirm == 'no') {
				die(js::confirm($this->lang->kevinlogin->confirmLock, $this->createLink('kevinlogin', 'userLock', "account=$account&confirm=yes")));
			} else {
				$this->kevinlogin->lockUser($account);
				die(js::reload('parent.parent'));
			}
		} else {
			die(js::locate($this->createLink('kevinhours', 'browse'), 'parent'));
		}
	}

}
