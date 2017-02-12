<?php

namespace BackendBundle\Repository;

/**
 * Description of UserRepository
 *
 * @author fmorales
 */
class UserRepository extends \Doctrine\ORM\EntityRepository {
	
	public function getFollowingUsers($user){
		$em = $this->getEntityManager();
		$following_repo = $em->getRepository('BackendBundle:Following');
		$following = $following_repo->findBy(array('user' => $user));
		
		$following_array = array();
		foreach ($following as $follow){
			$following_array[]->getFollowed();
		}
		
		$user_repo = $em->getRepository('BackendBundle:User');
		$users = $user_repo->createQueryBuilder('u')
				->where("u.id != :user AND u.id IN (:following)")
				->setParameter('user', $user->getId())
				->setParameter('following', $following_array)
				->orderBy('u.id', 'DESC');
		
		return $users;
	}
}
