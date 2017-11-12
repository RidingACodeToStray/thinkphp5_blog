<?php
namespace app\admin\controller;
use think\Controller;
class Basic extends Controller
{
    //定义控制器初始化方法_initialize，在该控制器的方法调用之前首先执行。
    public function _initialize()
    {
        if(!session('id')){
            return $this->error('请先登录系统',url('Login/login'));
        }
    }


}
