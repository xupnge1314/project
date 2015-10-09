<?php

class kevinloginModel extends model {

	public function getGroupPrivsByMethod($module, $method) {
		$groupObjs = $this->dao->select('*')->from(TABLE_GROUPPRIV)
			->where('module')->eq($module)
			->andWhere('method')->eq($method)
			->fetchAll('group');
		return $groupObjs;
	}

	public function getPasswordList($pager = null) {
		$pwds = $this->dao->select('*')->from(TABLE_DEFAULTPASSWORD)
			->where('password')->ne('')
			->page($pager)
			->fetchAll();
		if (empty($pwds)) {
			return array();
		}
		$pwdArray = array();
		foreach ($pwds as $pwd) {
			$pwdArray[$pwd->id] = $pwd->password;
		}
		return $pwdArray;
	}

	public function updateDefaultPwd() {
		$data	 = fixer::input('post')->get();
		$pwdList = $this->post->pwdList ? $this->post->pwdList : array();

		if (!empty($pwdList)) {
			/* Initialize todos from the post data. */
			foreach ($pwdList as $pwdID) {
				$pwd = $data->password[$pwdID];
				if ('' === $pwd) {
					continue;
				}
				if ($pwdID > 0) {
					$this->updatePwd($pwdID, $pwd);
				} else {
					$this->setdefaultpwd($pwd);
				}
			}
		}
		if (dao::isError()) {
			echo js::error(dao::getError());
			die(js::reload('parent'));
		}
	}

	/**
	 * Update privilege by module.
	 * 
	 * @access public
	 * @return void
	 */
	public function updatePrivOfGroup() {
		if ($this->post->module == false or $this->post->actions == false or $this->post->groups == false)
			return false;
		//删除权限
		$this->dao->delete()->from(TABLE_GROUPPRIV)
			->where('module')->eq($this->post->module)
			->andWhere('method')->eq($this->post->actions)->exec();
		//插入权限
		foreach ($this->post->groups as $group) {
			$data			 = new stdclass();
			$data->group	 = $group;
			$data->module	 = $this->post->module;
			$data->method	 = $this->post->actions;
			$this->dao->insert(TABLE_GROUPPRIV)
				->data($data)
				->exec();
		}
		return true;
	}

	public function updatePwd($id, $password) {
		$this->dao->update(TABLE_DEFAULTPASSWORD)
			->set('password')->eq($password)
			->where('id')->eq($id)
			->exec();
	}

	public function lockUser($account) {
		$this->dao->update(TABLE_USER)->set('fails')->eq(0)->set('locked')->eq('2030-01-01 00:00:00')
			->where('account')->eq($account)
			->exec();
	}

	public function setdefaultpwd($pwd) {
		$tempObj = $this->dao->select('*')->from(TABLE_DEFAULTPASSWORD)
				->where('password')->eq($pwd)->fetch();
		if (!$tempObj) {
			$this->dao->insert(TABLE_DEFAULTPASSWORD)->set('password')->eq($pwd)->exec();
		}
	}

}
