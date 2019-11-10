<?php
//  echo form_open('leaf_upload/predict_disease'); ?>
	<form method="post" name="upload" id="ovo-f" enctype="multipart/form-data">
    <div class="container">
        <div class="col-md-8 col-md-offset-2">
            <p style="margin-top: 50px">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean vel pretium tortor. Interdum et malesuada fames ac ante ipsum primis in faucib. 
            <br/><br/>
            Nam interdum odio in eros pretium pretium. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla sagittis blandit ex, ac pulvinar sapien placerat non. Sed sem neque, accumsan et pretium a, interdum et nulla. Morbi condimentum sapien auctor, varius mauris vitae, elementum lacus. Aenean mattis eu ex sit amet volutpat. Mauris vel dictum ante.
            </p>
        </div>
        <div class="col-md-8 col-md-offset-2" style="margin-top: 10px">
            <div style="  display: block;
				margin-left: auto;
				margin-right: auto;
				width: 170px;
				padding-top: 10px"
			>
			
                <input type="file" name="file" id="file" size="20" style="margin-top:30px;"/>
                <input type="button" id="submit" class="submit" value="upload" style="margin:30px 20px; padding:10px 50px; color: #f4623a; font-weight:700; 
                border:2px solid #f4623a; border-radius: 20px" />
               
            </div>
        </div>
    </div>
</form>
    <?php //echo form_close(); ?>

    
    <script type="text/javascript">
        $(document).ready(function() {
            $("#submit").click(function() {
                var fileInput = document.getElementById('file');
                var file = fileInput.files[0];
                var formData = new FormData();
                formData.append('image', file);
                console.log(file);
				alert("Pera");
				
				$.ajax({
					url: "http://localhost:5005/api/classify_image",
					enctype: "multipart/form-data",
					processData: false,
					contentType: false,
					cache: false,
					type: "POST",
				//	timeout: 600000,
					crossDomain: true,
					data: formData,
							
							success: function(data){
								//console.log(data);
								var x=data[1]*100-Math.round(data[1]*100);
								window.location.replace("<?php  echo base_url().'cures/'?>"+data[0]+'/'+Math.round(data[1]*100)+'/'+Math.round(x*100));
								
							}
				 });
            }); });
            </script>
            
          