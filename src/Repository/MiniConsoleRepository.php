<?php

namespace App\Repository;

use App\Entity\MiniConsole;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method MiniConsole|null find($id, $lockMode = null, $lockVersion = null)
 * @method MiniConsole|null findOneBy(array $criteria, array $orderBy = null)
 * @method MiniConsole[]    findAll()
 * @method MiniConsole[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class MiniConsoleRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, MiniConsole::class);
    }

    // /**
    //  * @return MiniConsole[] Returns an array of MiniConsole objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('m')
            ->andWhere('m.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('m.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?MiniConsole
    {
        return $this->createQueryBuilder('m')
            ->andWhere('m.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
