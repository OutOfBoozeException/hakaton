	<form method="post" name="upload" id="ovo-f" enctype="multipart/form-data">
		<div class="container">
			<div class="col-md-8 col-md-offset-2">
				<p style="margin-top: 50px; font-size: 18px; font-weight:100">
					The compatibility of medicines is simple; the preventing and treating effect is good; and various beneficial microorganisms and organic fertilizers contained in the plant medicament also can play a fertilization increase effect so that cucumbers with big size and heavy weight can be yielded. 
					<br/><br/>
					Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.
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
					<input type="button" id="submit" class="submit" value="upload" style="margin:30px 20px; padding:10px 50px; color: #f4623a; font-weight:700; border:2px solid #f4623a; border-radius: 20px" />
				</div>
			</div>
			
		</div> <!-- end of .containter -->
	</form> <!-- end of form -->
    
    <script type="text/javascript">
        $(document).ready(function() {
            $("#submit").click(function() {
                var fileInput = document.getElementById('file');
                var file = fileInput.files[0];
                var formData = new FormData();
                formData.append('image', file);
                console.log(file);
				$.ajax({
					url: "http://localhost:5005/api/classify_image",
					enctype: "multipart/form-data",
					processData: false,
					contentType: false,
					cache: false,
					type: "POST",
					crossDomain: true,
					data: formData,	
					success: function(data){
						var x=data[1]*100-Math.round(data[1]*100);
						window.location.replace("<?php  echo base_url().'cures/'?>"+data[0]+'/'+Math.round(data[1]*100)+'/'+Math.round(x*100));
					}
				 });
            }); 
		});
    </script>
            
          