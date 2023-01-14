<?php

namespace App\Controller;

use App\Entity\Formation;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
//use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class FormationController extends AbstractController
{
    private $entityManager;

    public function __construct(EntityManagerInterface $entityManager){
        $this->entityManager = $entityManager;

    }


    /**
     * @Route("/nos-formation", name="formations")
     */
    public function index() //: Response
    {

        $formations = $this->entityManager->getRepository(Formation::class)->findAll();
     // dd($formations);

        return $this->render('formation/index.html.twig',[
            'formations'=>$formations

        ]);

    }
}
















