<?php
$w = 320;$class = '';

if(isset($item[$_m[0]]['layout']) && $item[$_m[0]]['layout']){
	if($item[$_m[0]]['layout'] == 'Centro'){
		$w = 640;	
	}
	$class.= 'pulsembox portada '.$item[$_m[0]]['layout'];
}
	
echo
	$this->element('top',array('header'=>false)),
	$html->div('detail'),
		$html->tag('h1',$item[$_m[0]]['nombre_'.$_lang],array('class'=>'title')),
		$html->para('date',$util->fdate('s',$item[$_m[0]]['created'])),
		
		$html->div('clear'),
			$util->th($item,$_m[0],array(
				'w'=>$w,
				'h'=>500,
				'class'=>$class,
				'url'=>true,
				'atts'=>array('rel'=>'roller')
			)),
			$html->div('desc tmce subtitulo',$item[$_m[0]]['subtitulo_'.$_lang].''),
			$html->div('desc tmce',$item[$_m[0]]['descripcion_'.$_lang].''),
		'</div>',
	
		$this->element('share'),
		$this->element('slider',array('model'=>$_m[0].'img','data'=>$item[$_m[0].'img'],'skip'=>true,'title'=>'descripcion')),
		$this->element('comments'),
	'</div>';
?>
</div>
</div><!-- content -->
<?php echo $this->element('sidebar'); ?>