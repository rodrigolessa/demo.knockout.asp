	<!--#include file="Shared/Cabecalho.asp"-->

	<div class="container-fluid content-main">

		<div class="col-lg-12">

			<div class="container-narrow">

				<form class="form-inline" role="form" accept-charset="UTF-8" id="mainForm" method="post" data-bind="submit: adicionarTarefa">

					<div class="form-group">
						<label class="sr-only" for="txtDescricao">tarefa</label>
						<input type="text" id="txtDescricao" data-bind="value: descricaoNovaTarefa" placeholder="o que precisa ser feito?" class="form-control">
					</div>
					<button type="submit" class="btn btn-default">salvar</button>

				</form>

				<br />

				<table class="table table-striped">
				<thead>
					<tr>
						<th>&nbsp;</th>
						<th>#</th>
						<th>Lista de Tarefas (<span data-bind="text: tarefas().length"></span>)</th>
						<th>&nbsp;</th>
					</tr>
				</thead>
				<tbody data-bind="foreach: tarefas">
					<tr>
						<td><input type="checkbox" data-bind="checked: Executada" /></td>
						<td data-bind="text: Id"></td>
						<td data-bind="text: Descricao" class="text-left"></td>
						<td><a href="#" data-bind="click: $root.removerTarefa, visible: !Executada()">excluir</a></td>
					</tr>
				</tbody>
				</table>

				Você possui <b data-bind="text: tarefasIncompletas().length">&nbsp;</b> tarefa(s) incompletas!

			</div>

		</div>
		<!--/span-->

	</div>
	<!--/row-->

	<!-- NÍVEL / SENIOR //-->
	<div class="row container-nivel">

		<div class="col-lg-12">

			<div class="container-narrow text-right">
				<img src="img/my.icon2.png" width="82" height="82" class="my-icon">
			</div>

		</div>

	</div>
	<!--/row-->

	<div class="row container-divisor-base">

		<div class="col-lg-12">

			<div class="container-narrow text-left">
				<h4 data-bind="text: loginUsuario">Rodrigo Lessa</h4>
			</div>

		</div>

	</div>
	<!--/row-->

	<div class="row container-base">

		<div class="col-lg-12">

			<div class="container-narrow">
				...
			</div>

		</div>

	</div>
	<!--/row-->

	<!--#include file="Shared/ScriptsComuns.asp"-->

	<script src="js/ViewModel/ListarTarefasViewModel.js"></script>

	<!--#include file="Shared/Rodape.asp"-->