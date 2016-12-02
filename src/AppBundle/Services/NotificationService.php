<?php
namespace AppBundle\Services;
use BackendBundle\Entity\Notification;

class NotificationService {
    public $manager;
    
    public function __construct($manager) {
        $this->manager = $manager;
    }
}
