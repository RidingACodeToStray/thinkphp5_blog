<?php
namespace app\index\controller;
class Lists extends Basic
{
    public function index()
    {
    	$cates=\think\Db::name('cate')->field('catename')->find(input('cateid'));//查询文章cateid对应的catename
    	$catename=$cates['catename'];
    	$artres= \think\Db::name('article')->order('artid desc')->where('cateid','=',input('cateid'))->paginate(2);//查询某个栏目下的对应文章
    	$this->assign('artres',$artres);
    	$this->assign('catename',$catename);
        return $this->fetch('lists');
    }
}
