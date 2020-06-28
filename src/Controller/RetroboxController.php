<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class RetroboxController extends AbstractController
{
    /**
     * @Route("/", name="home")
     */
    public function index()
    {
        return $this->render('retrobox/index.html.twig', [
            'controller_name' => 'RetroboxController',
        ]);
    }
    /**
     * @Route("/retrobox", name= "mini-consoles")
     */
    public function displayMachines()
    {
        return $this->render('retrobox/consoles.html.twig');
    }

    /**
     * @Route("/retrobox/NESmini", name= "one-mini")
     */

    public function displayAMachine()
    {
        return $this->render('retrobox/display-one.html.twig');
    }

}
