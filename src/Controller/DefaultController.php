<?php
namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;

class DefaultController
{
    // TODO: Add event dispatcher with sequence find product and buy if available
    public function index(): Response
    {
        return new Response(
            '<html><body>Lucky number: 3</body></html>'
        );
    }
}