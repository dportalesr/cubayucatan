<?php
App::import('Controller','_base/My');
class InicioController extends MyController {
	var $name = 'Inicio';
	var $uses = array('Carousel');

	function index(){
		$carrusel = $this->Carousel->find_();
		$this->set(compact('carrusel'));

		$this->pageTitle = Configure::read('Site.slogan');
		
	}
	function convertidor(){
		$this->layout = 'empty';
		$this->render('/elements/convertidor');
	}
	
	function email(){ $this->layout = 'empty'; }
}
?>