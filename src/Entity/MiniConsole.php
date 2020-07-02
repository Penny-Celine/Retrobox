<?php

namespace App\Entity;

use App\Repository\MiniConsoleRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=MiniConsoleRepository::class)
 */
class MiniConsole extends Article
{

    /**
     * @ORM\Column(type="string")
     */
    private $ReleaseYear;

    /**
     * @ORM\Column(type="string")
     */
    private $price;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $opinion;


    /**
     * @ORM\OneToMany(targetEntity=Games::class, mappedBy="emulatedOn")
     */
    private $games;


    public function __construct()
    {
        $this->games = new ArrayCollection();
    }



    public function getReleaseYear(): ?string
    {
        return $this->ReleaseYear;
    }

    public function setReleaseYear(string $ReleaseYear): self
    {
        $this->ReleaseYear = $ReleaseYear;

        return $this;
    }

    public function getPrice(): ?string
    {
        return $this->price;
    }

    public function setPrice(string $price): self
    {
        $this->price = $price;

        return $this;
    }

    public function getOpinion(): ?string
    {
        return $this->opinion;
    }

    public function setOpinion(string $opinion): self
    {
        $this->opinion = $opinion;

        return $this;
    }

    public function getImage(): ?string
    {
        return $this->image;
    }

    public function setImage(string $image): self
    {
        $this->image = $image;

        return $this;
    }

    public function getLastModifiedAt(): ?\DateTimeInterface
    {
        return $this->LastModifiedAt;
    }

    public function setLastModifiedAt(\DateTimeInterface $LastModifiedAt): self
    {
        $this->LastModifiedAt = $LastModifiedAt;

        return $this;
    }

    /**
     * @return Collection|Games[]
     */
    public function getGames(): Collection
    {
        return $this->games;
    }

    public function addGame(Games $game): self
    {
        if (!$this->games->contains($game)) {
            $this->games[] = $game;
            $game->setEmulatedOn($this);
        }

        return $this;
    }

    public function removeGame(Games $game): self
    {
        if ($this->games->contains($game)) {
            $this->games->removeElement($game);
            // set the owning side to null (unless already changed)
            if ($game->getEmulatedOn() === $this) {
                $game->setEmulatedOn(null);
            }
        }

        return $this;
    }

}
