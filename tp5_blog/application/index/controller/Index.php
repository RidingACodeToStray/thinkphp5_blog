<?php
namespace app\index\controller;
class Index extends Basic
{
    public function index()
    {
    	$artres= \think\Db::name('article')->alias('a')->join('cate c','c.ID = a.cateid','LEFT')->field('a.artid,a.title,a.pic,a.time,a.desc,a.click,a.keywords,c.catename')->order('a.artid desc')->paginate(2);
    	$this->assign('artres',$artres);
        return $this->fetch();
    }
}
