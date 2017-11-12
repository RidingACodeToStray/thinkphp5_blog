<?php
namespace app\index\controller;
class Tags extends Basic
{
    public function index()
    {
    	$tags=input('tags');//获取传过来的关键词
    	$map=['a.keywords' => ['like','%'.$tags.'%']];//拼接查询关键词的语句
    	//联表查询article表中所有与用户搜索相同的关键词的该栏目下的文章，，2篇文章为一页;按照文章的artid进行排序
    	$artres= \think\Db::name('article')->alias('a')->join('cate c','c.ID = a.cateid','LEFT')->field('a.artid,a.title,a.pic,a.time,a.desc,a.click,a.keywords,c.catename')->order('a.artid desc')->where($map)->paginate(2);
    	$this->assign('artres',$artres);
        return $this->fetch('tags');
    }
}
