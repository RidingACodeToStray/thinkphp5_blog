<?php
namespace app\admin\controller;
class Cate extends Basic
{
    public function lists()
    {
        // 使用查询构造器查询数据cate表中的所有数据赋给$cateres
        $cateres = \think\Db::name('cate')->select();
        //模板赋值，将$cateres的值赋给模板cateres
        $this->assign('cateres',$cateres);
        return $this->fetch();
    }

    public function add()
    {
        //reuqest方法继承于Controller,使用request助手函数判断请求方式
        //使用助手函数input接收接收输入的值
    	if(request()->isPost()){
            $data = [
                'catename'=>input('catename'),
                'keywords'=>input('keywords'),
                'desc'=>input('desc'),
                'type'=>input('type') ? input('type') : 0,//如果type为空则为0
            ];
            //对输入的内容进行验证,使用tp5推荐的验证器的方式
            $validate = \think\Loader::validate('Cate');
            if($validate->check($data)){
                //将$data插入数据库,使用tp5数据库添加数据的方法
                //在database.php配置文件中配置了数据库前缀(prefix)，那么可以直接使用 Db 类的 name 方法提交数据
                $res = \think\Db::name('cate')->insert($data);
                //添加判断，成功则跳转到lists方法
                if($res){
                    return $this->success('添加栏目成功','lists');
                }else{
                    return $this->error('添加栏目失败');
                }
            }else{
                //验证失败输出提示信息
                return $this->error($validate->getError());
            }
    		return;
    	}
        return $this->fetch();
    }

    public function del()
    {
        //获取模板传过来的id
        $id=input('id');
        //使用助手函数进行删除操作和判断
        if(db('cate')->delete($id)){
            return $this->success('删除栏目成功','lists');
        }else{
            return $this->error('删除栏目失败');
        }
    }

    public function edit()
    {
        //获取修改的信息
        $id=input('id');
        $cates = db('cate')->where('ID',$id)->find();
        $this->assign('cates',$cates);//模板赋值
        //修改后提交
        if(request()->isPost()){
            $data=[
                'ID'=>input('id'),
                'catename'=>input('catename'),
                'keywords'=>input('keywords'),
                'desc'=>input('desc'),
                'type'=>input('type') ? input('type') : 0,
            ];
            //验证
            $validate = \think\Loader::validate('Cate');
            if($validate->scene('edit')->check($data)){
                $res = \think\Db::name('cate')->update($data);
                if($res){
                    return $this->success('修改栏目成功','lists');
                }else{
                    return $this->error('修改栏目失败');
                }
            }else{
                //验证失败输出提示信息
                return $this->error($validate->getError());
            }
        }
        return $this->fetch();
    }
}
