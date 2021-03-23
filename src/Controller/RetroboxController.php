<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Doctrine\ORM\EntityManagerInterface;

use App\Entity\MiniConsole;
use App\Entity\Article;
use App\Entity\Comment;
use App\Form\CommentType;
use App\Repository\ArticleRepository;
use App\Repository\MiniConsoleRepository;
use App\Repository\CommentRepository;

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
     * @Route("/mentions-legales", name="legal")
     */
    public function legal()
    {
        return $this->render('legalNotice.html.twig');
    }

    /**
     * @Route("/mini-consoles", name= "mini-consoles")
     */
    public function displayMachines( MiniConsoleRepository $miniConsolesRepo)
    {
    
        $miniConsoles = $miniConsolesRepo->findBy( array(), array('title' => 'asc'));

        return $this->render('retrobox/consoles.html.twig', [
            'miniConsoles' => $miniConsoles
        ]);
    }

    /**
     * @Route("/mini-consoles/{title}", name= "one-mini")
     */

    public function displayAMachine($title, MiniConsole $miniConsole, Request $request, EntityManagerInterface $manager, CommentRepository $commentrepo)
    {

        $comments = $miniConsole->getComments();

        $comment = new Comment();
        $formComment = $this->createForm(CommentType::class, $comment);
    
        $formComment->handleRequest($request);
        if ($formComment->isSubmitted() && $formComment->isValid())
        {
    
            $comment->setCreatedAt(new \DateTime());
            $comment->setisReported(false);
            $comment->setRelatedTo($miniConsole);
            $manager->persist($comment);
            $manager->flush();
    
            return $this->redirectToRoute('one-mini', ['title' => $title]);
    
        }

        if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['report']))
        {
            $reportedComment = $commentrepo->findOneById($_POST['report']);
            $reportedComment->setIsReported('true');
            $manager->persist($reportedComment);
            $manager->flush();

            return $this->render('retrobox/display-one.html.twig', [
                'miniConsole' => $miniConsole,
                'formComment' => $formComment->createView(),
                'message' => 'Le commentaire a bien été signalé.'
            ]);
        }
        
        return $this->render('retrobox/display-one.html.twig', [
            'miniConsole' => $miniConsole,
            'formComment' => $formComment->createView(),
            'message' => ''
        ]);
        

    }
    /**
     * @Route("/contact", name="contact")
     */
    public function contact(Request $request, $name = null, $email = null, $content = null , \Swift_Mailer $mailer)
    {
        $defaultData = ['message' => 'Entrez votre message...'];
        $form = $this->createFormBuilder($defaultData)
            ->add('nom', TextType::class)
            ->add('email', EmailType::class)
            ->add('message', TextareaType::class)
          
            ->getForm();

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $data = $form->getData();
            
            $name = $data ['nom'] ;
            $email = $data ['email'];
            $content = $data ['message'];

            $confirm = (new \Swift_Message('Feedback Email'))
                    ->setFrom('retrobox.game@gmail.com')
                    ->setTo('retrobox.game@gmail.com')
                    ->setBody(
                        $this->renderView(
                            // templates/contact.html.twig
                            'confirm.html.twig',[
                                'name' => $name,
                                'content' => $content,
                                'email' => $email]
                        ),
                        'text/html'
                    );

            $mailer->send($confirm);

            $message = (new \Swift_Message('Confirmation Email'))
                    ->setFrom('retrobox.game@gmail.com')
                    ->setTo($email)
                    ->setBody(
                        $this->renderView(
                            // templates/contact.html.twig
                            'confirm.html.twig',[
                                'name' => $name,
                                'content' => $content,
                                'email' => $email]
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
            'formContact' => $form->createView(),
            'message' => 'Vous pouvez nous contacter à l\'aide de ce formulaire'
        ]);
        
    }


    /**
     * @Route("/Article/{title}", name= "article")
     */

    public function displayArticle($title, Request $request, Article $article, EntityManagerInterface $manager)
    {

        $comments = $article->getComments();

        $comment = new Comment();
        $formComment = $this->createForm(CommentType::class, $comment);

        $formComment->handleRequest($request);
        if ($formComment->isSubmitted() && $formComment->isValid())
        {

            $comment->setCreatedAt(new \DateTime());
            $comment->setisReported(false);
            $comment->setRelatedTo($article);
            $manager->persist($comment);
            $manager->flush();

            return $this->redirectToRoute('article', ['title' => $title]);

        }
        if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['report']))
        {
            $reportedComment = $commentrepo->findOneById($_POST['report']);
            $reportedComment->setIsReported('true');
            $manager->persist($reportedComment);
            $manager->flush();

            return $this->render('retrobox/article.html.twig', [
                'article' => $article,
                'formComment' => $formComment->createView(),
                'message' => 'Le commentaire a bien été signalé.'
            ]);
        }

        return $this->render('retrobox/article.html.twig', [
            'article' => $article,
            'formComment' => $formComment->createView(),
            'message' => ''
        
        ]);
    }

}

    


