<?php
namespace app\admin\controller;
class Article extends Basic
{
    public function lists()
    {
        $artres = \think\Db::name('article')->alias('a')->join('cate c','c.ID = a.cateid','LEFT')->paginate(3);
        $this->assign('artres',$artres);
        return $this->fetch();
    }

    public function add()
    {
    	//reuqest方法继承于Controller,使用request助手函数判断请求方式
        //使用助手函数input接收接收输入的值
    	if(request()->isPost()){
    		$data = [
    			'title' => input('title'),
    			'keywords' => input('keywords'),
    			'desc' => input('desc'),
                'cateid' => input('cateid'),
    			'content' => input('content'),
    			'time' => time(),
    		];
    		//判断表单是否上传了文件
    		if($_FILES['pic']['tmp_name']){
    			//获取表单上传的文件
    			$file = request()->file('pic');
    			// 移动到框架应用根目录/public/uploads/ 目录下
			    $info = $file->move(ROOT_PATH . 'public' . DS . '/static/uploads');
			    if($info){
			        //拼接文件路径
			        //使用date()方法计算出八位时间，上传到uploads的文件所在的文件名就是这八位时间
			        //使用$info->getFilename()方法获取文件名
			        $data['pic'] = '/static/uploads/'.date('Ymd').'/'.$info->getFilename();
			    }else{
			        // 上传失败返回错误信息
			        return $this->error($file->getError());
			    }
    		};
    		//对输入的内容进行验证,使用tp5推荐的验证器的方式
    		$validate = \think\Loader::validate('Article');
    		if($validate->check($data)){
    			//文件上传完毕，表单验证完毕，存入数据库
    			$res = \think\Db::name('article')->insert($data);
                //添加判断，成功则跳转到lists方法
                if($res){
                    return $this->success('增加文章成功');
                }else{
                    return $this->error('增加文章失败');
                }
    		}else{
                //验证失败输出提示信息
                return $this->error($validate->getError());
            }
    		return;
    	}
        //获取cateid
        $cateres = db('cate')->select();
        $this->assign('cateres',$cateres);//模板赋值
        return $this->fetch();
    }

    public function edit()
    {
        //根据传过来的id值查询对应的articLe
        $arts = \think\Db::name('article')->where('artid',input('id'))->find();
        $this->assign('arts',$arts);//模板赋值

        //reuqest方法继承于Controller,使用request助手函数判断请求方式
        //使用助手函数input接收接收输入的值
        if(request()->isPost()){
            $data = [
                'artid' => input('id'),//获取隐藏的input值
                'cateid' => input('cateid'),
                'title' => input('title'),
                'keywords' => input('keywords'),
                'desc' => input('desc'),
                'content' => input('content'),
            ];
            //判断表单是否上传了文件
            if($_FILES['pic']['tmp_name']){
                //获取表单上传的文件
                $file = request()->file('pic');
                // 移动到框架应用根目录/public/uploads/ 目录下
                $info = $file->move(ROOT_PATH . 'public' . DS . '/static/uploads');
                if($info){
                    //拼接文件路径
                    //使用date()方法计算出八位时间，上传到uploads的文件所在的文件名就是这八位时间
                    //使用$info->getFilename()方法获取文件名
                    $data['pic'] = '/static/uploads/'.date('Ymd').'/'.$info->getFilename();
                }else{
                    // 上传失败返回错误信息
                    return $this->error($file->getError());
                }
            };
            //对输入的内容进行验证,使用tp5推荐的验证器的方式
            $validate = \think\Loader::validate('Article');
            if($validate->check($data)){
                //文件上传完毕，表单验证完毕，存入数据库
                $res = \think\Db::name('article')->update($data);
                //添加判断，成功则跳转到lists方法
                if($res){
                    return $this->success('修改文章成功','lists');
                }else{
                    return $this->error('修改文章失败');
                }
            }else{
                //验证失败输出提示信息
                return $this->error($validate->getError());
            }
            return;
        }
        //获取cateid
        $cateres = db('cate')->select();
        $this->assign('cateres',$cateres);//模板赋值
        return $this->fetch();
    }

    public function del()
    {
        //获取模板传过来的id
        $id=input('id');
        //使用助手函数进行删除操作和判断
        if(db('article')->delete($id)){
            return $this->success('删除文章成功','lists');
        }else{
            return $this->error('删除文章失败');
        }
    }
}
