	<!-- Latest compiled JavaScript -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	</body>
	<footer class="fondoOficial text-white text-center py-2 fixed-bottom">
	    © 2026 SICETE - OGICyT
	</footer>

	<script>
		(() => {
		    'use strict';
		    const forms = document.querySelectorAll('.needs-validation');

		    Array.from(forms).forEach(form => {
		        form.addEventListener('submit', event => {
		            if (!form.checkValidity()) {
		                event.preventDefault();
		                event.stopPropagation();
		            }
		            form.classList.add('was-validated');
		        }, false);
		    });
		})();
	</script>

</html>


<!-- 4️⃣ Summernote JS -->
<script src="https://cdn.jsdelivr.net/npm/summernote@0.9.0/dist/summernote-bs5.min.js"></script>

<script src="https://cdn.tiny.cloud/1/f6y9mb4rmrnqi5rmqpcomhb9uh2yf9xg9cbvdsrob0r75f7b/tinymce/8/tinymce.min.js" referrerpolicy="origin" crossorigin="anonymous"></script>