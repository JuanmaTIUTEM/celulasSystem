

<h1>Gestión de Proyectos</h1>
<hr>

<div class="container">
  <div class="d-flex justify-content-end">
    <div>
      <a href="/proyectos/create" class="btn btn-outline-info">
        <span style='font-size:20px;'>&#128466;</span>
        Nuevo
      </a>
      <!--<button type="button" class="btn btn-outline-info" data-bs-toggle="modal" data-bs-target="#prueba">
        <span style='font-size:20px;'>&#128466;</span>
        Nuevo
      </button>-->
    </div>    
  </div>
  <br>
  <div class="list-group">
    <?php 
    if(sizeof($proyectos) > 0){
      foreach ($proyectos as $proy): ?>
      <a href="#" class="list-group-item list-group-item-action">
        <div class="d-flex flex-column">
            <div class="row">
                <label><strong>ClaveP</strong> - Nombre Proyecto</label>
            </div>
      </a>
    <?php endforeach;
    }else{?>
      <a href="#" class="list-group-item list-group-item-action">
          <div class="d-flex flex-column">
            <div class="row">
                <label><strong>0</strong> - No hay proyectos registrados</label>
            </div>
          <?php } ?>
          </div>
      </a>
      
    </div>  

</div>


<!-- The Modal -->
<div class="modal fade" id="prueba">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Modal Heading</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <textarea id="editor"></textarea>
        <hr>
        <textarea id="editor2"></textarea>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>



<!-- Place the following <script> and <textarea> tags your HTML's <body> -->
<script>
  tinymce.init({
    selector: '#editor2',
    plugins: [
      // Core editing features
      'anchor', 'autolink', 'charmap', 'codesample', 'emoticons', 'link', 'lists', 'media', 'searchreplace', 'table', 'visualblocks', 'wordcount',
      // Your account includes a free trial of TinyMCE premium features
      // Try the most popular premium features until Mar 10, 2026:
      'checklist', 'mediaembed', 'casechange', 'formatpainter', 'pageembed', 'a11ychecker', 'tinymcespellchecker', 'permanentpen', 'powerpaste', 'advtable', 'advcode', 'advtemplate', 'ai', 'uploadcare', 'mentions', 'tinycomments', 'tableofcontents', 'footnotes', 'mergetags', 'autocorrect', 'typography', 'inlinecss', 'markdown','importword', 'exportword', 'exportpdf'
    ],
    toolbar: 'undo redo | blocks fontfamily fontsize | bold italic underline strikethrough | link media table mergetags | addcomment showcomments | spellcheckdialog a11ycheck typography uploadcare | align lineheight | checklist numlist bullist indent outdent | emoticons charmap | removeformat',
    tinycomments_mode: 'embedded',
    tinycomments_author: 'Author name',
    mergetags_list: [
      { value: 'First.Name', title: 'First Name' },
      { value: 'Email', title: 'Email' },
    ],
    ai_request: (request, respondWith) => respondWith.string(() => Promise.reject('See docs to implement AI Assistant')),
    uploadcare_public_key: '032534b4abd9982446c7',
  });
</script>
<script>
$(function() {
  $('#editor').summernote({
    height: 300
  });
});
</script>