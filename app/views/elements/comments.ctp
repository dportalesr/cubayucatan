<?php
if(isset($comments)){
	if($this->Session->check('form_errors.Comment')){
		$this->Form->validationErrors = array('Comment'=>$this->Session->read('form_errors.Comment.errors'));
		$this->Session->delete('form_errors.Comment');
	}

echo
	$html->div(null,null,array('id'=>'comments')),
		$html->div('title title2',__('comenta',true)),
		$form->create('Comment',array('action'=>'publicar','id'=>'commentForm')),
			$form->input('parent',array('value'=>$_m[0],'type'=>'hidden')),
			$form->input('parent_id',array('value'=>$item[$_m[0]]['id'],'type'=>'hidden')),

			$html->div('subform'),
				$form->input('descripcion',array('label'=>__('comentario',true).':','div'=>'comment_textarea')),
				$html->div('comment_texts'),
					$form->input('mail',array('div'=>'hide')),
					$form->input('autor',array('label'=>__('nombre',true).':')),
					$form->input('email',array('label'=>__('email',true).':')),
					//$form->input('web',array('label'=>'Sitio web:')),
					$form->submit(__('enviar',true)),
				'</div>',
			'</div>',
			
		$form->end(),
	
	/////////////

		$html->div('comment_list'),
		$html->tag('a','',array('name'=>'comments')),
		$html->div('hide','',array('id'=>'comment_updater')),
		$html->div('comment_count',$item[$_m[0]]['comment_count'] ? '('.$item[$_m[0]]['comment_count'].') '.__('comentarios',true):__('no_comentarios_aun',true),array('id'=>'comment_count'));
		
		$odd = false;
		foreach($comments as $comment){
			echo $this->element('comment',array('data'=>$comment['Comment'],'odd'=>$odd));
			$odd = !$odd;
		}
		
		echo
			$this->element('pages',array('model'=>'Comment','full'=>true)),
			'</div>',
	
	'</div>';
	
	$moo->addEvent('commentForm','submit',array(
		'url'=>'/comments/publicar',
		'prevent'=>true,
		'data'=>'"commentForm"',
		'fade'=>1,
		'update'=>'"comment_updater"'
	));
}
?>