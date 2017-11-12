<?php
namespace app\admin\validate;
use think\Validate;
class Article extends Validate
{
    //验证规则
    protected $rule = [
        //必须，长度不能超过25，名称不能重复
        'title'  =>  'require|max:25|unique:article',
    ];

    //验证提示
    protected $message  =   [
        'title.unique' => '文章名称不能重复', 
        'title.max' => '文章名称不能大于25个字符',
        'title.require' => '文章名称必须',
    ];
}