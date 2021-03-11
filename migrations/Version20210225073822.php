<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210225073822 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE hard_skills_project (hard_skills_id INT NOT NULL, project_id INT NOT NULL, INDEX IDX_9B78DC6D44C6C0E1 (hard_skills_id), INDEX IDX_9B78DC6D166D1F9C (project_id), PRIMARY KEY(hard_skills_id, project_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE hard_skills_project ADD CONSTRAINT FK_9B78DC6D44C6C0E1 FOREIGN KEY (hard_skills_id) REFERENCES hard_skills (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE hard_skills_project ADD CONSTRAINT FK_9B78DC6D166D1F9C FOREIGN KEY (project_id) REFERENCES project (id) ON DELETE CASCADE');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('DROP TABLE hard_skills_project');
    }
}
