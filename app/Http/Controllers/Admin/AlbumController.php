<?php 
namespace App\Http\Controllers\Admin;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Album;
use Input, File;
use Validator,Auth;

class AlbumController extends Controller
{
    public function getList()
    {  
        $projectId = $_GET['type'];
        $data = Album::where('project_id', $projectId)->orderBy('stt','asc')->get();
        return view('admin.album.index', compact('data'));
    }
    public function getAdd()
    {
        $projectId = $_GET['type'];
        $data = Album::where('project_id', $projectId)->get();
        return view('admin.album.create', compact('data'));
    }
    public function postAdd(Request $req)
    {
        $projectId = $req->txtCom;
        $album = new Album;
        $album->project_id = $projectId;
        $album->name = $req->txtName;
        $album->type_view = $req->type_view;
        $album->stt = intval($req->stt);
        $galeries = [];
        if ($req->hasFile('album_image')) {
            foreach ($req->file('album_image') as $index=>$file) {
                $imageFileName = time() . '_' . $file->getClientOriginalName();
                $file->move('upload/product', $imageFileName);  
                $album->photo = $imageFileName;
                $galeries[] = [
                    'photo' => $imageFileName
                ];
            }
            $a = json_encode($galeries);
            $album->photo = $a;            
        }            
        $album->save();
        return redirect('backend/album?type='.$projectId)->with('status','Thêm mới thành công !');
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function getEdit(Request $request, $id)
    {
        $data = Album::find($id);
        $albums= json_decode($data->photo);
        return view('admin.album.edit',compact('data','albums'));
        
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update(Request $req, $id)
    {
        $data = Album::find($id);
        $data->name = $req->txtName;
        $data->type_view = $req->type_view;
        $data->stt = intval($req->stt);
        if ($req->hasFile('album_image')) {
            foreach ($req->file('album_image') as $index=>$file) {
                $imageFileName = time() . '_' . $file->getClientOriginalName();
                $file->move('upload/product', $imageFileName);  
                $data->photo = $imageFileName;
                $galeries[] = [
                    'photo' => $imageFileName
                ];
            }
            $a = json_encode($galeries);
            $data->photo = $a;            
        }
        $data->save();
        return redirect()->back()->with('status','Cập nhật thành công');
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function getDelete($id)
    {
        $data = Album::find($id);
        $data->delete();
        return redirect()->back()->with('status','Xóa thành công');
    }
    
    /*
     * Remove image in album
     * 
     * @return Response
     */
    public function deleteAjax(Request $req)
    {
        $id = $req->id;
        $data = Album::find($id);
        $albums = json_decode($data->photo);
        $image = $req->photo;
        foreach($albums as $k=>$item){            
            if($item->photo == $image){
                if(count($albums) ==1){
                    $albums = array();
                }
                unset($albums[$k]);
            }            
        }
        $data->photo = json_encode($albums);
        $data->save();

        return view('admin.album.ajax', compact('albums','data'));
        // return redirect()->back();
    }
}
