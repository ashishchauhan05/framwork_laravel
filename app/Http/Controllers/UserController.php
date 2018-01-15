<?php namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
// use App\Role;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use App\Http\Requests\UserRequest;
use App\Http\Requests\UserEditRequest;
use Datatables;
use View;
use DB;
use Session;
use Auth;

class UserController extends AbstractController {
    public function __construct(){
        parent::__construct();
    }

    /*
    * Display a listing of the resource.
    *
    * @return Response
    */
    public function getUsers() {
    }

    public function index()
    {
        return view('admin.users.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function getCreate() {
        View::share('tab_id','tab_create_edit');
        $status = Session::get('status');
        return View::make('users.create_edit', array('status' => $status));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function postCreate(UserRequest $request) {
        $status = array();
        try {
            $user = new User ();
            $user -> name = $request->name;
            $user -> email = $request->email;
            $user -> mobile = $request->mobile;
            $user -> password = bcrypt($request->password);
            $user -> active = $request->active;
            $user -> save();
            $status = array('code' => 'success',
                            'header' => 'Success',
                            'messages' => array('New user successfully created')
                            );
        }catch(\Exception $e){
            if (strpos($e->getMessage(), 'Duplicate') !== false) {
                $status['code'] = 'danger';
                $status['header'] = 'Alert';
                $status['messages'] = array('Username already exists');
            }else {
                $status['code'] = 'danger';
                $status['header'] = 'Alert';
                $status['messages'] = array($e->getMessage());
            }

            return redirect('/users/create')->with('status', $status);
        }
        return redirect('/users/'.$user->id.'/edit')->with('status', $status);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param $user
     * @return Response
     */
    public function getEdit($id) {
        View::share('tab_id','tab_create_edit');
        $status = Session::get('status');
        $user = User::find($id);
        return View::make('users.create_edit', array('user' => $user,  'status'=>$status));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param $user
     * @return Response
     */
    public function postEdit(UserEditRequest $request, $id) {
        $user = User::find($id);
        $user -> name = $request->name;
        $user -> email = $request->email;
        $user -> mobile = $request->mobile;
        $user -> active = $request->active;
        $user -> address = $request->address;
        $password = $request->password;
        $passwordConfirmation = $request->password_confirmation;

        if (!empty($password)) {
            if ($password === $passwordConfirmation) {
                $user -> password = bcrypt($password);
            }
        }
        $user -> save();
        $status = array('code' => 'success',
                        'header' => 'Success',
                        'messages' => array('User successfully updated')
                    );
        return redirect('/users/'.$id.'/edit')->with('status', $status);
    }

    public function getRoles($id) {
        View::share('tab_id','tab_roles');
        $status = Session::get('status');
        $user = User::find($id);
        $roles_model = Role::all();
        $roles = array();
        foreach ($roles_model as $key => $value) {
            if(!Auth::user()->hasRole('admin')) {
                if($value->name == 'admin'){
                    continue;
                }
                if($value->name == 'sub_admin'){
                    continue;
                }
            }
            $roles[$value->id] = $value->name;
        }

        return View::make('users.create_edit_roles', array('user' => $user,  'status'=>$status, 'roles' => $roles));
    }

    public function postRoles(Request $request, $id) {
        View::share('tab_id','tab_roles');
        $user = User::find($id);
        
		// syncRole did not exist in new a setup of plugin
        // $user->syncRole($request->roles);
		$user->roles()->detach();
		foreach ($request->roles as $role) {
			$user->assignRole($role);
		}
        $user = $user->fresh();
        $user->role = $request->roles[0];

        $user->save();
        $status = array('code' => 'success',
                        'header' => 'Success',
                        'messages' => array('Roles successfully updated'));
        return redirect('/users/add_edit_roles/'.$id)->with('status', $status);
    }

    public function getPermissions($id) {
        View::share('tab_id','tab_permissions');
        $status = Session::get('status');
        $user = User::find($id);
        $permissions_model = Permission::all();
        $permissions = array();
        foreach ($permissions_model as $key => $value) {
            $permissions[$value->id] = $value->name;
        }
        return View::make('admin.users.create_edit_permissions', array('user' => $user,  'status'=>$status, 'permissions' => $permissions));
    }

   
    /**
     * Remove the specified resource from storage.
     *
     * @param $user
     * @return Response
     */

    public function getDelete($id)
    {
        $user = User::find($id);
        // Show the page
        return view('users.delete', compact('user'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param $user
     * @return Response
     */
    public function postDelete(DeleteRequest $request,$id)
    {
        $user= User::find($id);
        $user->delete();
    }

    /**
     * Show a list of all the languages posts formatted for Datatables.
     *
     * @return Datatables JSON
     */
    public function data()
    {
        $users = User::select(array('users.name', 'users.mobile', 'users.email', 'users.active', 'users.id', 'users.role'))
                ->whereNull('deleted_at')
                ->where('id' ,'!=',Auth::user()->id);

        if(!Auth::user()->hasRole('admin')){
            $users = $users->where('role','=','employee');
        }

        return Datatables::of($users)
            ->edit_column('active', '@if ($active=="1") <i class="material-icons">check</i> @else <i class="material-icons">close</i> @endif')
            ->add_column('actions', '<a href="{{{ URL::to(\'/users/\' . $id . \'/edit\' ) }}}" class="btn btn-success btn-sm iframe" ><span class="glyphicon glyphicon-pencil"></span>Edit</a>')
            ->remove_column('id')

            ->make();
    }

}
