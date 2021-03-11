<?php

namespace App\Form;

use App\Entity\Project;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Vich\UploaderBundle\Form\Type\VichFileType;
use App\Entity\HardSkills;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;


class ProjectType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('title')
            ->add('description')
            ->add('duration')
            ->add('link1')
            ->add('link2')
            ->add('url')
            ->add('projectPictureFile', VichFileType::class, [
                'required' => false,
                'allow_delete' => true, // not mandatory, default is true
                'download_uri' => true, // not mandatory, default is true
            ])
            ->add('projectDescriptionMdFile', VichFileType::class, [
                'required' => false,
                'allow_delete' => true, // not mandatory, default is true
                'download_uri' => true, // not mandatory, default is true
            ])
            ->add('hardSkills', EntityType::class, [
                'class' => HardSkills::class,
                'choice_label' => 'name',         
                'multiple' => true,
                'expanded' => true,
                'by_reference' => false,         
            ])
            ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Project::class,
        ]);
    }
}
