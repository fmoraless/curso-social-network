<?php

namespace BackendBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class DefaultController extends Controller
{
    public function indexAction()
    {
		$em = $this->getDoctrine()->getManager();
		$user_repo = $em->getRepository("BackendBundle:User");
		
		$user = $user_repo->find(1);
		
		echo "Bienvenido ".$user->getName()." ".$user->getSurname();
		
		var_dump($user);
		die();
        return $this->render('BackendBundle:Default:index.html.twig');
    }
}
