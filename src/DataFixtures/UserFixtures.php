<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;
use App\Entity\User;

class UserFixtures extends Fixture
{
    private $passwordEncoder;

    public function __construct(UserPasswordEncoderInterface $passwordEncoder)
     {
         $this->passwordEncoder = $passwordEncoder;
     }
    
    public function load(ObjectManager $manager)    {
      
         // Création d’un utilisateur de type “administrateur”
        
                $admin = new User();
                $admin->setEmail('admin@monsite.com');        
                $admin->setRoles(['ROLE_ADMIN']);        
                $admin->setPassword($this->passwordEncoder->encodePassword($admin,'adminpassword'));
                
                $manager->persist($admin);
        
         // Sauvegarde de l'admin :
        
                $manager->flush();
    }
}