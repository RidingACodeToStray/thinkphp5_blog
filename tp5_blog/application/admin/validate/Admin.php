<?php
namespace app\admin\validate;

use think\Validate;

class Admin extends Validate
{
    //验证规则
    protected $rule = [
        'username'  =>  'require|max:25|unique:admin',
        'password' => 'require|min:5',
    ];

    //验证提示
    protected $message  =   [
        'username.unique' => '管理员名称不能重复', 
        'username.max' => '管理员名称不能大于5个字符',
        'username.require' => '管理员名称必须',
        'password.require' => '管理员密码必须',
        'password.min' => '管理员密码不能少于5位',
    ];
}