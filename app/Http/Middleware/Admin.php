<?php namespace App\Http\Middleware;

use Closure;
use Illuminate\Contracts\Auth\Guard;
use Illuminate\Contracts\Routing\Middleware;
use Illuminate\Contracts\Routing\ResponseFactory;

use App\AssignedRoles;

class Admin implements Middleware {

    /**
     * The Guard implementation.
     *
     * @var Guard
     */
    protected $auth;

    /**
     * The response factory implementation.
     *
     * @var ResponseFactory
     */
    protected $response;

    /**
     * Create a new filter instance.
     *
     * @param  Guard  $auth
     * @param  ResponseFactory  $response
     * @return void
     */
    public function __construct(Guard $auth,
                                ResponseFactory $response)
    {
        $this->auth = $auth;
        $this->response = $response;
    }
    /**
	 * Handle an incoming request.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  \Closure  $next
	 * @return mixed
	 */
	public function handle($request, Closure $next)
	{
        if ($this->auth->check())
        {
            $user = $this->auth->user();
            $actions = $request->route()->getAction();
            $roles = isset($actions['roles']) ? $actions['roles'] : null;

            if($roles && !$user->hasRole($roles)) {
                return $this->response->redirectTo('/admin/unauthorized');
            }
            elseif($user->hasRole(['admin','sub_admin','employee']))
                return $next($request);
            else
                return redirect()->guest('/');
        } 
        else {
          return $this->response->redirectTo('/');
        }
	}

}
