<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class RetroboxController extends AbstractController
{
    /**
     * @Route("/retrobox", name="retrobox")
     */
    public function index()
    {
        return $this->render('retrobox/index.html.twig', [
            'controller_name' => 'RetroboxController',
        ]);
    }
}
