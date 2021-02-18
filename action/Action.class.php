<?php
//控制器基类
class Action{
    protected $_tpl;
    protected $_model;

    //构造方法 初始化
    protected function __construct(&$_tpl,&$_model=null){
        $this->_tpl = $_tpl;
        $this->_model = $_model;
    }

    //
    protected function page($_total,$_pagesize=PAGE_SIZE){
        $_page = new Page($_total,$_pagesize);
        $this->_model->limit = $_page->limit;
        $this->_tpl->assign('page',$_page->showpage());
        $this->_tpl->assign('num',($_page->page-1)*$_pagesize);
    }
}

