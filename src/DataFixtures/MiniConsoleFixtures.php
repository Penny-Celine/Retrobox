<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use App\Entity\MiniConsole;
use App\Entity\Games;
use App\Entity\Article;

class MiniConsoleFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {
        for ($i=1; $i<=5; $i++)
        {
            $miniConsole = new MiniConsole();
            $miniConsole->setTitle('NameToTest')
                        ->setReleaseYear('1984')
                        ->setPrice('33')
                        ->setOpinion('OK')
                        ->setContent('Description toute nulle parce que je suis fatiguée...')
                        ->setImage('http://placehold.it/600x400')
                        ->setLastModifiedAt(new \DateTime());

    

            $manager->persist($miniConsole);

            for ($j=1; $j<=15; $j++)
            {
                $game = new Games();
                $game->setName('NameToTest')
                            ->setReleaseYear('1989')
                            ->setType('Shoot\'em Up')
                            ->setEmulatedOn($miniConsole);
        
                $manager->persist($game);
            }
        }
        $manager->flush();
    }
}
