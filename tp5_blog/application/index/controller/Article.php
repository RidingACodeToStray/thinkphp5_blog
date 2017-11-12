<?php
namespace app\index\controller;
class Article extends Basic
{
    public function index()
    {
    	$id=input('artid');//在文章列表页点击进入获取传过来的文章的id值
    	db('article')->where('artid', $id)->setInc('click');//click字段自增1，setInc第二个参数为空则默认自增1
        //根据文章id联表查询该文章的栏目名称，获取该文章的信息
    	$arts=\think\Db::name('article')->alias('a')->join('cate c','c.ID = a.cateid','LEFT')->field('a.keywords,a.title,a.content,a.time,a.click,a.artid,a.cateid,c.catename,a.pic')->find($id);
        //使用limit方法查询该栏目的上一篇文章的id值
    	$prev= \think\Db::name('article')->where('artid','<',$id)->where('cateid','=',$arts['cateid'])->order('artid desc')->limit(1)->value('artid');
        //使用limit方法查询该栏目的下一篇文章的id值
    	$next= \think\Db::name('article')->where('artid','>',$id)->where('cateid','=',$arts['cateid'])->order('artid asc')->limit(1)->value('artid');
    	$this->assign('arts',$arts);
    	$this->assign('prev',$prev);
    	$this->assign('next',$next);
    	$ralateres=$this->ralate($arts['keywords']);//调用ralate方法传递参数关键词
    	$this->assign('ralateres',$ralateres);
        return $this->fetch('article');
    }
   //相关文章获取
    public function ralate($keywords){
    	$arr=explode(',', $keywords);//将获取的关键词转化为数组
    	$ralateres=array();
    	//根据关键词遍历文章数据库获取具有该关键词的文章（可能会获取到重复的文章）
    	foreach ($arr as $k => $v) {
    		$map['keywords']  = ['like','%'.$v.'%'];
    		//从数据库中获取具有该关键词的所有文章
    		$artres= \think\Db::name('article')->order('artid desc')->where($map)->limit(10)->field('artid,title,time')->select();
    		$ralateres=array_merge($ralateres,$artres);//两数组合并为一个数组（将新获取的文章插入到之前的文章数组中）
    		$ralateres=$this->arr_unique($ralateres);//数组去重（文章去重）
    	}
    	return $ralateres;
    	
    }
    /**相关文章数组去重函数
     * @param  [type]
     * @return [type]
     */
    public function arr_unique($arr2D){
        //将二维数组转化为一维数组
        foreach ($arr2D as $v) {
            $v=join(',',$v);
            $temp[]=$v;//每篇文章的信息成了一个字符串
        }

        $temp=array_unique($temp);//去重，去除重复的文章信息
        //再恢复成二维数组
        foreach ($temp as $k => $v) {
            $temp[$k]=explode(',', $v);
        }

        return $temp;

    }
}
