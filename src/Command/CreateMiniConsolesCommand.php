<?php


namespace App\Command;

use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\Console\Helper\ProgressBar;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\DBAL\Connection;
use Symfony\Component\HttpFoundation\Response;

use App\Service\ConvertCsvToArray;

use App\Entity\Games;
use App\Entity\MiniConsole;

class CreateMiniConsolesCommand extends Command
{

    protected static $defaultName = 'app:create-miniConsoles';

    private $connection;
    private $manager;

    public function __construct(Connection $connection, EntityManagerInterface $manager)
    {
        $this->connection = $connection;
        $this->manager = $manager;
        parent::__construct();
    }

    protected function configure()
    {
        // Name and description for app/console command
        $this
        ->setName('app:create-miniConsoles')
        ->setDescription('Import data from CSV file');
    }
    protected function execute(InputInterface $input, OutputInterface $output)
    {
        // Showing when the script is launched
        $now = new \DateTime();
        $output->writeln('<comment>Start : ' . $now->format('d-m-Y G:i:s') . ' ---</comment>');
        
        // Importing CSV on DB via Doctrine ORM
        $this->import($input, $output);
        
        // Showing when the script is over
        $now = new \DateTime();
        $output->writeln('<comment>End : ' . $now->format('d-m-Y G:i:s') . ' ---</comment>');
    
        return Command::SUCCESS;
    
    }

    
    protected function import(InputInterface $input, OutputInterface $output)
    {
        // Getting php array of data from CSV
        $data = $this->get($input, $output);
        
        // Turning off doctrine default logs queries for saving memory
        $this->connection->getConfiguration()->setSQLLogger(null);
        
        // Define the size of record, the frequency for persisting the data and the current index of records
        $size = count($data);
        $batchSize = 20;
        $i = 1;
        
        // Starting progress
        $progress = new ProgressBar($output, $size);
        $progress->start();
        
        // Processing on each row of data
        foreach($data as $row) {
            $miniConsole = $this->manager->getRepository(MiniConsole::class)
                       ->findOneByTitle($row['title']);
             
            // If the miniConsole does not exist we create one
            if(!is_object($miniConsole)){
                $miniConsole = new MiniConsole();
                $miniConsole->setTitle($row['title']);
            
            }
            
            // Updating info
            $miniConsole->setContent($row['content'])
                        ->setPrice($row['price'])
                        ->setOpinion($row['opinion'])
                        ->setImage($row['image'])
                        ->setReleaseYear($row['releaseYear'])
                        ->setLastModifiedAt(new \DateTime);

  
            // Persisting the current miniConsole
            $this->manager->persist($miniConsole);
            
            // Each 20 miniConsoles persisted we flush everything
            if (($i % $batchSize) === 0) {
                $this->manager->flush();
                // Detaches all objects from Doctrine for memory save
                $this->manager->clear();
                
                // Advancing for progress display on console
                $progress->advance($batchSize);
        
                $now = new \DateTime();
                $output->writeln(' of miniConsoles imported ... | ' . $now->format('d-m-Y G:i:s'));
            }
            $i++;
        }
    
        // Flushing and clear data on queue
        $this->manager->flush();
        $this->manager->clear();
    
        // Ending the progress bar process
        $progress->finish();
    }
    protected function get(InputInterface $input , OutputInterface $output)
    {
        // Getting the CSV from filesystem
        $fileName = 'public/import/miniConsoles.csv';
        
        // Using service for converting CSV to PHP Array
        $converter = new ConvertCsvToArray;
        
        $data = $converter->convert($fileName, ';');
        
        return $data;
    }

}