<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class AddCredentials
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        // .env dosyasından credential bilgilerini al
        $username = env('MOCK_API_USERNAME');
        $password = env('MOCK_API_PASSWORD');

        // Header'a credential bilgilerini ekle
        $request->headers->set('Accept', 'application/json ' );
        $request->headers->set('Authorization_basic', 'Basic ' . base64_encode("$username:$password"));


        return $next($request);
    }
}
