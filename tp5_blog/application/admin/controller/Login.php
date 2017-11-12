<?php
namespace app\admin\controller;
use think\Controller;
use app\admin\model\Login as Log;//引入登录模型重命名防止与类名冲突
class Login extends Controller
{
    public function login()
    {
        if(request()->isPost()){
            $login=new Log;//实例化模型
            $status = $login->login(input('username'),input('password'));//调用模型方法进行数据库核对
            //根据模型返回的结果进行判断
            if($status === 1){
                return $this->success('登录成功,正在跳转','Index/index');
            }elseif ($status === 2) {
                return $this->error('账号或密码错误');
            }else{
                return $this->error('用户不存在');
            }
        }
        return $this->fetch('login');
    }
    public function logout(){
        session(null);//退出清空session
        return $this->success('退出成功',url('login'));//跳转到登录页面
    }
}
