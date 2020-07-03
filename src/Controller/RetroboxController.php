<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;

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
    /**
     * @Route("/contact", name="contact")
     */
    public function contact(Request $request, \Swift_Mailer $mailer)
    {
        $defaultData = ['message' => 'Entrez votre message...'];
        $form = $this->createFormBuilder($defaultData)
            ->add('nom', TextType::class, [
                'attr' => [
                    'placeholder' => 'Entrez votre nom'
                ]
            ])
            ->add('email', EmailType::class, [
                'attr' => [
                    'placeholder' => 'Entrez votre adresse mail'
                ]
            ])
            ->add('message', TextareaType::class)
            ->add('send', SubmitType::class, [
                'label' => 'Envoyer'
            ])
            ->getForm();

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $data = $form->getData();

            $message = (new \Swift_Message('Confirmation Email'))
                    ->setFrom('retrobox.game@gmail.com')
                    ->setTo('recipient@example.com')
                    ->setBody(
                        $this->renderView(
                            // templates/contact.html.twig
                            'confirm.html.twig',
                            ['name' => $name]
                        ),
                        'text/html'
                    );

            $mailer->send($message);
            
            return $this->render(
                            'contact.html.twig',
                            ['formContact' => $form->createView(),
                            'message' => 'Merci ! Votre message a bien été envoyé ! Vous allez recevoir un mail de confirmation']
            );
            
        }
        return $this->render('contact.html.twig', [
            'formContact' => $form->createView()
        ]);
        
    }
}

    


