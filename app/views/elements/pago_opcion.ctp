<?php
echo
	$form->input('forma_pago',array(
		'options'=>array('deposito'=>__('deposito_bancario',true),'pago_online'=>__('pago_online',true)),
		'label'=>__('forma_pago',true),
		'div'=>'forma_pago'
	)),
	$form->end(__('enviar',true)),
	$html->para('voucher_note'),
		$html->div('title',__('voucher_note_title',true)),
		__('voucher_note',true),
	'</p>';
?>