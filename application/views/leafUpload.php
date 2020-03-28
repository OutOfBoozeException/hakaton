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
						var x=Math.abs(data[1]*100-Math.floor(data[1]*100));
						var dictionary=new Object();
						//making dictionary
								dictionary["Blueberry___healthy"]= 48;
                                dictionary["Apple___healthy"]= 49;
                                dictionary["Apple___Black_rot"]= 50;
                                dictionary["Tomato___Tomato_mosaic_virus"]= 51;
                                dictionary["Apple___Cedar_apple_rust"]= 52;
                                dictionary["Apple___Apple_scab"]= 53;
                                dictionary["Pepper,_bell___healthy"]= 54;
                                dictionary["Peach___healthy"]= 55;
                                dictionary["Tomato___Late_blight"]= 56;
                                dictionary["Tomato___Septoria_leaf_spot"]= 57;
                                dictionary["Soybean___healthy"]= 58;
                                dictionary["Potato___healthy"]= 59;
                                dictionary["Tomato___Early_blight"]= 60;
                                dictionary["Cherry_(including_sour)___healthy"]= 61;
                                dictionary["Peach___Bacterial_spot"]= 62;
                                dictionary["Pepper,_bell___Bacterial_spot"]= 63;
                                dictionary["Tomato___healthy"]= 64;
                                dictionary["Tomato___Spider_mites Two-spotted_spider_mite"]= 65;
                                dictionary["Tomato___Target_Spot"]= 66;
                                dictionary["Raspberry___healthy"]= 67;
                                dictionary["Strawberry___healthy"]= 68;
                                dictionary["Orange___Haunglongbing_(Citrus_greening)"]= 69;
                                dictionary["Cherry_(including_sour)___Powdery_mildew"]= 70;
                                dictionary["Potato___Late_blight"]= 71;
                                dictionary["Tomato___Leaf_Mold"]= 72;
                                dictionary["Tomato___Tomato_Yellow_Leaf_Curl_Virus"]= 73;
                                dictionary["Grape___Black_rot"]= 74;
                                dictionary["Grape___healthy"]= 75;
                                dictionary["Grape___Esca_(Black_Measles)"]= 76;
                                dictionary["Strawberry___Leaf_scorch"]= 77;
                                dictionary["Corn_(maize)___Common_rust_"]= 78;
                                dictionary["Potato___Early_blight"]= 79;
                                dictionary["Corn_(maize)___Northern_Leaf_Blight"]= 80;
                                dictionary["Tomato___Bacterial_spot"]= 81;
                                dictionary["Corn_(maize)___healthy"]= 82;
                                dictionary["Corn_(maize)___Cercospora_leaf_spot Gray_leaf_spot"]= 83;
                                dictionary["Squash___Powdery_mildew"]= 84;
                                dictionary["Grape___Leaf_blight_(Isariopsis_Leaf_Spot)"]= 85;
								diseaseId=dictionary[data[0]];
							
						//done making dictionary
						window.location.replace("<?php  echo base_url().'cures/'?>"+diseaseId+'/'+Math.round(data[1]*100)+'/'+Math.floor(x*100));
					}
				 });
            }); 
		});
    </script>
            
          