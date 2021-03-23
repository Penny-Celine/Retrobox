<?php

namespace App\Controller;

use App\Entity\User;
use App\Entity\Comment;
use App\Entity\Article;

use App\Repository\CommentRepository;

use App\Form\RegistrationType;

use Doctrine\ORM\EntityManagerInterface;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

use Symfony\Component\Routing\Annotation\Route;

use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class SecurityController extends AbstractController
{
    /**
     *@Route("/registration", priority=10 , name="security_registration")
     */
    public function registration(Request $request, UserPasswordEncoderInterface $encoder){
        
        $user = new User;
        $manager = $this->getDoctrine()->getManager();
        
        $form = $this->createForm(RegistrationType::class, $user);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $hash = $encoder->encodePassword($user, $user->getPassword());
            $user->setPassword($hash);
            $user->setRoles(['ROLE_USER']);
            /*if ($user->getUserName() == 'Admin')
            {
                $user->setRoles(['ROLE_ADMIN']);
            }*/
            $manager->persist($user);
            $manager->flush();

            return $this->redirectToRoute('security_login');
        }

        return $this->render('security/registration.html.twig', [
            'form' => $form->createView()
        ]);

    }

    /**
     * @Route("/login", priority=9 , name="security_login")
     */
    public function login(){
        return $this->render('security/login.html.twig');
    }

    /**
     * @Route("/logout", name="security_logout")
     */
    public function logout(){}

    /**
     * @Route("/admin", name="security_home")
     */
    public function admin(EntityManagerInterface $manager,CommentRepository $commentrepo){

        $rComments = $commentrepo->findAllReportedComments();

        if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['modify']))
        {
            $modifiedComment = $commentrepo->findOneById($_POST['modify']);
            $modifiedComment->setContent($_POST['comment-content']);
            $modifiedComment->setIsReported(false);
            $manager->persist($modifiedComment);
            $manager->flush();

            $rComments = $commentrepo->findAllReportedComments();
            return $this->render('security/index.html.twig', [
                'rComments' => $rComments
            ]);
        }

        if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['delete']))
        {
            $deletedComment = $commentrepo->findOneById($_POST['delete']);
            $manager->remove($deletedComment);
            $manager->flush();

            $rComments = $commentrepo->findAllReportedComments();
            return $this->render('security/index.html.twig', [
                'rComments' => $rComments
            ]);
        }

        return $this->render('security/index.html.twig', [
            'rComments' => $rComments
        ]);
    }

}
