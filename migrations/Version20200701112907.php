<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200701112907 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE article (id INT AUTO_INCREMENT NOT NULL, title VARCHAR(255) NOT NULL, content LONGTEXT NOT NULL, last_modified_at DATETIME NOT NULL, image VARCHAR(255) NOT NULL, discr VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE games (id INT AUTO_INCREMENT NOT NULL, emulated_on_id INT NOT NULL, name VARCHAR(255) NOT NULL, release_year INT NOT NULL, type VARCHAR(255) NOT NULL, description LONGTEXT DEFAULT NULL, INDEX IDX_FF232B31A6E62DAA (emulated_on_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE mini_console (id INT NOT NULL, release_year INT NOT NULL, price INT NOT NULL, opinion VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE games ADD CONSTRAINT FK_FF232B31A6E62DAA FOREIGN KEY (emulated_on_id) REFERENCES mini_console (id)');
        $this->addSql('ALTER TABLE mini_console ADD CONSTRAINT FK_FE36F1AABF396750 FOREIGN KEY (id) REFERENCES article (id) ON DELETE CASCADE');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE mini_console DROP FOREIGN KEY FK_FE36F1AABF396750');
        $this->addSql('ALTER TABLE games DROP FOREIGN KEY FK_FF232B31A6E62DAA');
        $this->addSql('DROP TABLE article');
        $this->addSql('DROP TABLE games');
        $this->addSql('DROP TABLE mini_console');
    }
}
