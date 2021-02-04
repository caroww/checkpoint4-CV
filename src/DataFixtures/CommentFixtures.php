<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Faker;
use App\Entity\Comment;

class CommentFixtures extends Fixture 
{
    public function load(ObjectManager $manager)
    {
        $faker= Faker\Factory::create('en_US');
        
        for ($i=0;$i<=3;$i++)
        {
            $comment = new Comment();

            $comment->setTitle($faker->text())
                    ->setTextComment($faker->text())
                    ->setPseudo($faker->name())
                    ->setDate($this->faker->dateTimeBetween('-100 days', '-1 days'))
                    ->setArticle($this->getReference('article_'.rand(0,1),$comment));       
                    $this->addReference('comment_' . $i, $comment);
            $manager->persist($comment);
        }

        $manager->flush();
    }
}

/* php bin/console doctrine:fixtures:load --group=CommentFixtures --append */