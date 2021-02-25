<?php

namespace App\Entity;

use App\Repository\HardSkillsRepository;
use Doctrine\ORM\Mapping as ORM;
use Vich\UploaderBundle\Mapping\Annotation as Vich;
use Symfony\Component\HttpFoundation\File\File;



/**
 * @ORM\Entity(repositoryClass=HardSkillsRepository::class)
 * @Vich\Uploadable
 */
class HardSkills
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $name;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $description;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $hardSkillsLogo;

    /**
     * @Vich\UploadableField(mapping="upload_picture", fileNameProperty="hardSkillsLogo")
     * @var File
     */
    private $hardSkillsLogoFile;

    /**
     * @ORM\Column(type="datetime", nullable=true)
     */
    private $updateAt;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(?string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getHardSkillsLogo(): ?string
    {
        return $this->hardSkillsLogo;
    }

    public function setHardSkillsLogo(?string $hardSkillsLogo): self
    {
        $this->hardSkillsLogo = $hardSkillsLogo;

        return $this;
    }

    public function setHardSkillsLogoFile(File $image = null)
    {
        $this->hardSkillsLogoFile = $image;

        if ($image){
            $this->updateAt = (new \DateTime('now'));
        }     
    }

    public function getHardSkillsLogoFile(): ?File
    {
        return $this->hardSkillsLogoFile;
    }

    public function getUpdateAt(): ?\DateTimeInterface
    {
        return $this->updateAt;
    }

    public function setUpdateAt(?\DateTimeInterface $updateAt): self
    {
        $this->updateAt = $updateAt;

        return $this;
    }
}
