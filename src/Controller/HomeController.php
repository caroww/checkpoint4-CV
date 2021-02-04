<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\ExperienceRepository;
use App\Repository\ProjectRepository;
use App\Repository\HardSkillsRepository;
use App\Repository\ArticleRepository;

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

    /**
     * @Route("/home/project", name="home_project", methods={"GET"})
     */
    public function project(projectRepository $projectRepository): Response
    {
        return $this->render('home/project.html.twig', [
            'projects' => $projectRepository->findAll(),
        ]);
    }

    /**
     * @Route("/home/hardSkills", name="home_hardSkills", methods={"GET"})
     */
    public function hardSkills(hardSkillsRepository $hardSkillsRepository): Response
    {
        return $this->render('home/hardSkills.html.twig', [
            'hard_skills' => $hardSkillsRepository->findAll(),
        ]);
    }

    /**
     * @Route("/home/article", name="home_article", methods={"GET"})
     */
    public function articleIndex(ArticleRepository $articleRepository): Response
    {
        return $this->render('home/articleIndex.html.twig', [
            'articles' => $articleRepository->findAll(),
        ]);
    }

}
