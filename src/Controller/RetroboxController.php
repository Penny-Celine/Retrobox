<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\MiniConsole;

class RetroboxController extends AbstractController
{
    /**
     * @Route("/", name="home")
     */
    public function index()
    {
        return $this->render('retrobox/index.html.twig');
    }
    /**
     * @Route("/retrobox", name= "mini-consoles")
     */
    public function displayMachines()
    {
        $miniConsolesRepo = $this->getDoctrine()->getRepository(MiniConsole::class);
        $miniConsoles = $miniConsolesRepo->findAll();

        return $this->render('retrobox/consoles.html.twig', [
            'miniConsoles' => $miniConsoles
        ]);
    }

    /**
     * @Route("/retrobox/{id}", name= "one-mini")
     */

    public function displayAMachine($id)
    {
        $repo = $this->getDoctrine()->getRepository(MiniConsole::class);
        $miniConsole = $repo->find($id);
        return $this->render('retrobox/display-one.html.twig', [
            'miniConsole' => $miniConsole
        ]);
    }

}
