<?php
use App\Models\Post;
use App\Models\Menu;
use App\Libraries\MyClass;
$id = $_REQUEST['id'];
$post =  Post::find($id);
//
$list_menu = Menu::where([['table_id','=',$id],['type','=','page']])->get();
if($post==null){
    MyClass::set_flash('message',['msg'=>'Lỗi trang 404','type'=>'danger']);
    header("location:index.php?option=page&cat=trash");
}
if($post->delete())
{
    if(count($list_menu)>0)
    {
        foreach($list_menu as $menu)
        {
            $menu->delete();
        }
    }
    MyClass::set_flash('message',['msg'=>'Xóa Khỏi thành công','type'=>'success']);
    header("location:index.php?option=page&cat=trash");
}
