<?php
namespace app\admin\validate;

use think\Validate;

class Link extends Validate
{
    //验证规则
    protected $rule = [
        'title'  =>  'require|max:25|unique:link',
        'url' => 'require|url',
    ];
    //验证提示
    protected $message  =   [
        'title.unique' => '链接名称不能重复', 
        'title.max' => '链接名称不能大于5个字符',
        'title.require' => '链接名称必须',
        'url.require' => '链接地址必须',
        'url.url' => '无效的url地址',
    ];
}