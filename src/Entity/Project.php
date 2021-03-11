<?php

namespace App\Entity;

use App\Repository\ProjectRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Vich\UploaderBundle\Mapping\Annotation as Vich;
use Symfony\Component\HttpFoundation\File\File;

/**
 * @ORM\Entity(repositoryClass=ProjectRepository::class)
 * @Vich\Uploadable
*/
 
class Project
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
    private $title;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $description;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $duration;

    /**
     * @ORM\Column(type="string", length=500, nullable=true)
     */
    private $link1;

    /**
     * @ORM\Column(type="string", length=500, nullable=true)
     */
    private $link2;

    /**
     * @ORM\Column(type="string", length=500)
     */
    private $slugProject;

    /**
     * @ORM\Column(type="string", length=500, nullable=true)
     */
    private $url;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $projectDescriptionMd;

    /**
     * @Vich\UploadableField(mapping="upload_markdown", fileNameProperty="projectDescriptionMd")
     * @var File
     */
    private $projectDescriptionMdFile;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $projectPicture;

    /**
     * @Vich\UploadableField(mapping="upload_project", fileNameProperty="projectPicture")
     * @var File
     */
    private $projectPictureFile;

    /**
     * @ORM\Column(type="datetime", nullable=true)
     */
    private $updateAt;

    /**
     * @ORM\ManyToMany(targetEntity=HardSkills::class, mappedBy="project")
     */
    private $hardSkills;



    public function __construct()
    {
        $this->hardSkills = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTitle(): ?string
    {
        return $this->title;
    }

    public function setTitle(string $title): self
    {
        $this->title = $title;

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

    public function getDuration(): ?string
    {
        return $this->duration;
    }

    public function setDuration(?string $duration): self
    {
        $this->duration = $duration;

        return $this;
    }

    public function getLink1(): ?string
    {
        return $this->link1;
    }

    public function setLink1(?string $link1): self
    {
        $this->link1 = $link1;

        return $this;
    }

    public function getLink2(): ?string
    {
        return $this->link2;
    }

    public function setLink2(?string $link2): self
    {
        $this->link2 = $link2;

        return $this;
    }

    public function getSlugProject(): ?string
    {
        return $this->slugProject;
    }

    public function setSlugProject(string $slugProject): self
    {
        $this->slugProject = $slugProject;

        return $this;
    }

    public function getUrl(): ?string
    {
        return $this->url;
    }

    public function setUrl(?string $url): self
    {
        $this->url = $url;

        return $this;
    }

    public function getProjectPicture(): ?string
    {
        return $this->projectPicture;
    }

    public function setProjectPicture(?string $projectPicture): self
    {
        $this->projectPicture = $projectPicture;

        return $this;
    }

    public function setProjectPictureFile(File $image = null)
    {
        $this->projectPictureFile = $image;

        if ($image){
            $this->updateAt = (new \DateTime('now'));
        }     
    }

    public function getProjectPictureFile(): ?File
    {
        return $this->projectPictureFile;
    }

    public function getProjectDescriptionMd(): ?string
    {
        return $this->projectDescriptionMd;
    }

    public function setProjectDescriptionMd(?string $projectDescriptionMd): self
    {
        $this->projectDescriptionMd = $projectDescriptionMd;

        return $this;
    }

    public function setProjectDescriptionMdFile(File $doc = null)
    {
        $this->projectDescriptionMdFile = $doc;

        if ($doc){
            $this->updateAt = (new \DateTime('now'));
        }     
    }

    public function getProjectDescriptionMdFile(): ?File
    {
        return $this->projectDescriptionMdFile;
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

    /**
     * @return Collection|HardSkills[]
     */
    public function getHardSkills(): Collection
    {
        return $this->hardSkills;
    }

    public function addHardSkill(HardSkills $hardSkill): self
    {
        if (!$this->hardSkills->contains($hardSkill)) {
            $this->hardSkills[] = $hardSkill;
            $hardSkill->addProject($this);
        }

        return $this;
    }

    public function removeHardSkill(HardSkills $hardSkill): self
    {
        if ($this->hardSkills->removeElement($hardSkill)) {
            $hardSkill->removeProject($this);
        }

        return $this;
    }

}
