	<footer class="col-xs-12 alert alert-success" id="rodape">
   		<br>
   		<p class="text-center"><strong>Contatos</strong></p>
   		<div class="row text-center">
			<div class="col">
				<h5><a class="nav-link" href="https://www.facebook.com/lucas.berlandinha" ><i class="fab fa-facebook"></i><span> Lucas Berlanda</span></a></h5>
			</div>
			<div class="col">
				<h5><a class="nav-link" href="https://www.facebook.com/eduardo.santin.378"><i class="fab fa-facebook"></i><span> Eduardo Santin</span></a></h5>
			</div>
			<div class="col">
				<h5><a class="nav-link" href="https://www.facebook.com/josiel.bueno.1"><i class="fab fa-facebook"></i><span> Josiel Bueno</span></a></h5>
			</div>
			<br>
			<p class=" text-center">
				<strong><span>© </span><span>2019</span><span> </span><span>Academics</span><span>.
				</span><span>All Rights Reserved</span></strong>
			</p>
		</div>
 
    </footer>
	<script src=<c:url value="/resources/js/jquery-1.12.4.min.js"/>></script>
	<script src=<c:url value="/resources/js/bootstrap.min.js"/>></script>

	<script type="text/javascript">
		(function($) {
			$('.spinner .btn:first-of-type').on(
					'click',
					function() {
						$('.spinner input').val(
								parseInt($('.spinner input').val(), 10) + 1);
					});
			$('.spinner .btn:last-of-type').on(
					'click',
					function() {
						$('.spinner input').val(
								parseInt($('.spinner input').val(), 10) - 1);
					});
		})(jQuery);
	</script>
</body>
</html>