<?php
namespace app\index\controller;
class Guest extends Basic
{
    public function index()
    {
    	
    	if(request()->isPost()){
    		$data=[
    			'nickname'=>input('inpName'),
    			'homepage'=>input('inpHomePage'),
    			'email'=>input('inpEmail'),
    			'content'=>input('txaArticle'),
    			'time'=>time(),
    		];
    		if(\think\Db::name('guest')->insert($data)){
    			return $this->success('留言成功,正在跳转','Guest/index');
    		}else{
    			return $this->success('留言提交失败','Guest/index');
    		}
    		return;
    	}

    	$guestres=\think\Db::name('guest')->select();
    	$this->assign('guestres',$guestres);
        return $this->fetch('guest');
    }
}
