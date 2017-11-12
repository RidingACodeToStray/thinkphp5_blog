<?php
namespace app\index\controller;
class Search extends Basic
{
    public function index()
    {
    	$keywords=input('keywords');//获取搜索关键词
    	if($keywords){
    		$map['title']  = ['like','%'.$keywords.'%'];//关键词模糊搜索语句
    		$seares=\think\Db::name('article')->where($map)->order('artid desc')->paginate(2);//查询和分页
    		$this->assign('seares',$seares);//模板赋值
    		$this->assign('keywords',$keywords);
    	}else{
    		$this->assign('keywords','没有关键词');//没有关键词的情况处理
    		$this->assign('seares',null);

    	}
        return $this->fetch('search');
    }
}