<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\ExperienceRepository;

class HomeController extends AbstractController

{
    /**
     * @Route("/home", name="home")
     */
    public function index(): Response
    {
        return $this->render('home/index.html.twig', [
            'controller_name' => 'HomeController',
        ]);
    }

    /**
     * @Route("/home/experience", name="home_experience", methods={"GET"})
     */
    public function experience(ExperienceRepository $experienceRepository): Response
    {
        return $this->render('home/experience.html.twig', [
            'experiences' => $experienceRepository->findAll(),
        ]);
    }

}
