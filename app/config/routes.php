<?php
#Router::connect('/:lang/:prefix/:controller/:action/*',array('lang'=>null,'prefix'=>null,'controller'=>'inicio','action'=>'index'),array('lang' => '[a-z]{3}','prefix'=>'admin|member'));
$regex = array(
	'pass'=>array('id'),
	'lang'=>'ita|esp',
	//'sub'=>'[a-zA-Z0-9\-]+|^$',
	//'category'=>'[0-9]+_[a-zA-Z0-9\-]+|^$',
	'id'=>'[0-9]+_[a-zA-Z0-9\-]+'
);

foreach(Configure::read('Modules') as $controller => $mod){
	$alias = $mod['route'];
	Router::connect('/'.$alias,array('controller'=>$controller,'action'=>'index','lang'=>'ita'));
	Router::connect('/'.$alias.'/:id',array('controller'=>$controller,'action'=>'ver','lang'=>'ita'),$regex);
	Router::connect('/'.$alias.'/:action/*',array('controller'=>$controller,'action'=>'index','lang'=>'ita'),$regex);

	Router::connect('/esp/'.$alias,array('controller'=>$controller,'action'=>'index','lang'=>'esp'));
	Router::connect('/esp/'.$alias.'/:id',array('controller'=>$controller,'action'=>'ver','lang'=>'esp'),$regex);
	Router::connect('/esp/'.$alias.'/:action/*',array('controller'=>$controller,'action'=>'index','lang'=>'esp'),$regex);

	Router::connect('/admin/'.$alias,array('controller'=>$controller,'action'=>'index','admin'=>1));
	Router::connect('/admin/'.$alias.'/:action/*',array('controller'=>$controller,'action'=>':action','admin'=>1));
}

Router::connect('/',array('controller'=>'inicio','action'=>'index','lang'=>'ita'));
Router::connect('/esp',array('controller'=>'inicio','action'=>'index','lang'=>'esp'));

Router::connect('/registro',array('controller'=>'members','action'=>'registro'));
Router::connect('/login',array('controller'=>'members','action'=>'login'));
Router::connect('/logout',array('controller'=>'members','action'=>'logout'));

Router::connect('/panel', array('controller' => 'users', 'action' => 'dashboard','admin'=>1));
Router::connect('/panel/logout',array('controller'=>'users','action'=>'logout','admin'=>1));
Router::connect('/panel/login',array('controller'=>'users','action'=>'login','admin'=>1));

Router::connectNamed(array('msg','page','limit','activo','tipo','favorito','detalle'),array('default'=>true));
?>