<?php
namespace app\index\controller;
use think\Controller;
class Basic extends Controller
{
    //定义控制器初始化方法_initialize，在该控制器的方法调用之前首先执行。
    public function _initialize()
    {
        $this->nav();
    }
//给导航模板赋值
    public function nav()
    {
    	$navres = \think\Db::name('cate')->order('id asc')->select();
    	$this->assign('navres',$navres);    	
    }

}
