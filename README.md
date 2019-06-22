# Pizzaria

Data Base pizzaria

-- procedure para adicionar chave estrangeira do tamanho na tabela pedido

delimiter $

create procedure lancarIDTamanho(IN _idPedido bigint(20))

begin
	
	declare _tamanho varchar(45);

	declare _idTamanho int;

	
	select tamanho into _tamanho from pedido

	where codigo = _idPedido;


	select codigo into _idTamanho from tamanhopizza

	where tamanho = _tamanho;

	update pedido set idTamanho = _idTamanho where codigo = _idPedido;

end$

delimiter ;



-- procedure para calcular valor total do tamanho * a quantidade

delimiter $

create procedure calculaValor(IN _idPedido bigint(20))

begin

	declare _quantidade bigint(20);

	declare _codigoTamanho bigint(20);

	declare _valorDoTamanho float;

	select quantidade, idTamanho into _quantidade, _codigoTamanho from pedido

	where codigo = _idPedido;


	select valor into _valorDoTamanho from tamanhoPizza
	where codigo = _codigoTamanho;

	update pedido set valorTotal = _quantidade * _valorDoTamanho
	where codigo = _idPedido;

end$

delimiter ;