<?php 
namespace app\admin\model;

use think\Model;

class Login extends Model
{
	//登录数据处理函数
	//获取控制器传过来的登录名和密码，根据登录名在数据库中获取密码
	//若密码一样则给控制器返回1，若密码存在但是不一样返回2，或密码不存在，返回3
	public function login($username,$password){
		$admin = \think\DB::name('admin')->where('username','=',$username)->find();
		if($admin){
			if($admin['password'] === md5($password)){
				//将登录id和名称存入session
                \think\Session::set('id',$admin['id']);
                \think\Session::set('username',$admin['username']);
				return 1;
			}else{
				return 2;
			}
		}else{
			return 3;
		}
	}
}

?>