function ge(el){
  return document.getElementById(el);
}

function ajax_changetab_and_send_data(php_file, el, send_data){
  var hr=new XMLHttpRequest();
  hr.open('POST', php_file, true);
  hr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');

  hr.onreadystatechange=function(){
      if(hr.readyState==4 && hr.status==200){
          ge(el).innerHTML=hr.responseText;
      }
  };

  hr.send(send_data);
}

function ajax_changetab_and_send_data1(php_file, el, send_data){
  var hr=new XMLHttpRequest();
  hr.open('POST', php_file, true);
  hr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');

  hr.onreadystatechange=function(){
      if(hr.readyState==4 && hr.status==200){
      	  ge(el).options[select.options.length] = new Option(hr.responseText, hr.responseText);
      }
  };

  hr.send(send_data);
}

function ajax_changetab_and_send_data6(php_file, el, send_data){
  var hr=new XMLHttpRequest();
  hr.open('POST', php_file, true);
  hr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');

  hr.onreadystatechange=function(){
      if(hr.readyState==4 && hr.status==200){
          ge(el).innerHTML=hr.responseText;
      }
  };

  hr.send(send_data);
};

function ajax_changetab_and_send_data7(php_file, el, send_data){
  var hr=new XMLHttpRequest();
  hr.open('POST', php_file, true);
  hr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');

  hr.onreadystatechange=function(){
      if(hr.readyState==4 && hr.status==200){
          ge(el).value=hr.responseText;
      }
  };

  hr.send(send_data);
};

function ajax_changetab_and_send_dataget(php_file, el, send_data){
  var hr=new XMLHttpRequest();
  hr.open('GET', php_file, true);
  hr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');

  hr.onreadystatechange=function(){
      if(hr.readyState==4 && hr.status==200){
          ge(el).innerHTML=hr.responseText;
      }
  };

  hr.send(send_data);
}

//Login

function login(){
       
ge('status-action').innerHTML="<div class='alert alert-info' role='alert'><i class='fa fa-info-circle'></i> Authenticating …</div>";

 var username=$('#username').val();
 var password=$('#password').val();
 
 $.ajax({
     type:'POST',
     url: '../files/login/login.php',
     data:{
         username:username,
         password:password,
 
     },
     
     success: function (response){
         $("#status-action").html(response);
     }

 });

}

function register_user(){

   ge('status-action').innerHTML="<div class='alert alert-info' role='alert'><i class='fa fa-info-circle'></i> Registering user …</div>";
 
	var username=ge('username').value;
	var password=ge('password').value;
	var confpassword=ge('confpassword').value;

	var send_data1=
        "&username="+username+
		"&password="+password+
		"&confpassword="+confpassword;

    ajax_changetab_and_send_data('../files/user/register_user.php', 'status-action', send_data1)

}

function register_institution(){

   ge('status-action').innerHTML="<div class='alert alert-info' role='alert'><i class='fa fa-info-circle'></i> Registering institution …</div>";
 
	var name=ge('name').value;
	var email=ge('email').value;
	var address_location=ge('address_location').value;
	var address_building_number=ge('address_building_number').value;
	var address_building_floor=ge('address_building_floor').value;
	var phone_no=ge('phone_no').value;
	var username=ge('username').value;
	var password=ge('password').value;
	var confpassword=ge('confpassword').value;

	var send_data1=
        "&name="+name+
        "&email="+email+
        "&address_location="+address_location+
        "&address_building_number="+address_building_number+
        "&address_building_floor="+address_building_floor+
        "&phone_no="+phone_no+
		"&username="+username+
        "&password="+password+
		"&confpassword="+confpassword;

    ajax_changetab_and_send_data('../files/institution/register_institution.php', 'status-action', send_data1)

}

function add_document_type(){

   ge('status-action').innerHTML="<div class='alert alert-info' role='alert'><i class='fa fa-info-circle'></i> Saving document type …</div>";
 
	var type_name=ge('type_name').value;

	var send_data1=
		"&type_name="+type_name;

    ajax_changetab_and_send_data('../files/document/add_document_type.php', 'status-action', send_data1)

}

function add_document_payment_fee(){

   ge('status-action').innerHTML="<div class='alert alert-info' role='alert'><i class='fa fa-info-circle'></i> Setting document payment fee …</div>";
 
	var document_type=ge('document_type').value;
	var fees=ge('fees').value;

	var send_data1=
		"&document_type="+document_type+
		"&fees="+fees;

    ajax_changetab_and_send_data('../files/document/add_document_payment_fee.php', 'status-action', send_data1)

}

function register_lost_document(){

   ge('status-action').innerHTML="<div class='alert alert-info' role='alert'><i class='fa fa-info-circle'></i> Reporting document lost …</div>";
 
	var owner_names=ge('owner_names').value;
	var country_of_issue=ge('country_of_issue').value;
	var document_no=ge('document_no').value;
	var document_type=ge('document_type').value;
	var institution=ge('institution').value;
	var document_address=ge('document_address').value;
	var document_gender=ge('document_gender').value;
	var document_date=ge('document_date').value;

	var send_data1=
        "&owner_names="+owner_names+
        "&country_of_issue="+country_of_issue+
        "&document_no="+document_no+
        "&document_type="+document_type+
        "&institution="+institution+
		"&document_address="+document_address+
        "&document_gender="+document_gender+
        "&document_date="+document_date;

    ajax_changetab_and_send_data('../files/document/register_lost_document.php', 'status-action', send_data1)

}

function register_security_user(){

   ge('status-action').innerHTML="<div class='alert alert-info' role='alert'><i class='fa fa-info-circle'></i> Registering security user …</div>";
 
	var institution=ge('institution').value;
	var user_type=ge('user_type').value;
	var username=ge('username').value;
	var password=ge('password').value;
	var confpassword=ge('confpassword').value;

	var send_data1=
        "&institution="+institution+
        "&user_type="+user_type+
        "&username="+username+
		"&password="+password+
		"&confpassword="+confpassword;

    ajax_changetab_and_send_data('../files/institution/register_security_user.php', 'status-action', send_data1)

}

function btndisable() {
  var x = document.getElementById("vsregister");
    x.disabled = "true";
}

function visitor_registration(){

   ge('status-action').innerHTML="<div class='alert alert-info' role='alert'><i class='fa fa-info-circle'></i> Please wait … Registering your presence ...</div>";
 
	var names=ge('names').value;
	var institution=ge('institution').value;
	var destination=ge('destination').value;
	var phone_no=ge('phone_no').value;
	var country_of_issue=ge('country_of_issue').value;
	var document_no=ge('document_no').value;
	var document_type=ge('document_type').value;

	var send_data1=
        "&names="+names+
        "&institution="+institution+
        "&destination="+destination+
        "&phone_no="+phone_no+
        "&country_of_issue="+country_of_issue+
        "&document_no="+document_no+
        "&document_type="+document_type;

    ajax_changetab_and_send_data('../files/visitor/visitor_registration.php', 'status-action', send_data1)

}

function checkout_on() {
		ajax_changetab_and_send_data('../files/visitor/checkout.php', 'class_display_1', null);
}

function checkout() {
	$("#class_display_2").fadeOut(500);
	setTimeout(function () {
		ajax_changetab_and_send_data('../files/visitor/checkout.php', 'class_display_1', null);
	}, 500);
}
 
function checkout_visitor(vis1) {
  var vis_no = ge(vis1).innerHTML;
  ge('status-message').innerHTML = vis_no;
  ge('status-action').innerHTML = "<div class='sufee-alert alert with-close alert-warning alert-dismissible fade show'><span class='badge badge-pill badge-warning'>Warning</span> You are about to checkout a visitor. Are you sure? <a href='#/' onclick='checkout_visitor1()' class='alert-link'>Continue</a> <button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>";

}

function checkout_visitor1() {
  var vis_no2 = ge('status-message').innerHTML;
  checkout_visitor2(vis_no2);

}

function checkout_visitor2(visid) {

  ge('status-action').innerHTML = "<div class='alert alert-info' role='alert'><i class='fa fa-info-circle'></i> Please wait ... Checking out the visitor …</div>";

  var vis_no = visid;

  var send_data1 =
    "&vis_no=" + vis_no;

  ajax_changetab_and_send_data('../files/visitor/checkout_visitor.php', 'status-action', send_data1);

  setTimeout(function () {
    checkout();
  }, 800);

}

function search_document(){

   ge('status-action').innerHTML="<div class='alert alert-info' role='alert'><i class='fa fa-info-circle'></i> Please wait … Checking records ...</div>";
 
	var language='English';
	var document_no=ge('document_no').value;
	var document_type=ge('document_type').value;
	var country_of_issue=ge('country_of_issue').value;

	var send_data1=
        "&language="+language+
        "&document_no="+document_no+
        "&document_type="+document_type+
        "&country_of_issue="+country_of_issue;

    ajax_changetab_and_send_data('files/document/search_document.php', 'status-action', send_data1);

}

function search_document_fr(){

   ge('status-action').innerHTML="<div class='alert alert-info' role='alert'><i class='fa fa-info-circle'></i> Veuillez patienter… V&eacute;rification des enregistrements ...</div>";
 
	var language='French';
	var document_no=ge('document_no').value;
	var document_type=ge('document_type').value;
	var country_of_issue=ge('country_of_issue').value;

	var send_data1=
        "&language="+language+
        "&document_no="+document_no+
        "&document_type="+document_type+
        "&country_of_issue="+country_of_issue;

    ajax_changetab_and_send_data('files/document/search_document.php', 'status-action', send_data1);

}

function search_document_rw(){

   ge('status-action').innerHTML="<div class='alert alert-info' role='alert'><i class='fa fa-info-circle'></i> Ihangane gato … Turi gushakisha mubyo dufite ...</div>";
 
	var language='Kinyarwanda';
	var document_no=ge('document_no').value;
	var document_type=ge('document_type').value;
	var country_of_issue=ge('country_of_issue').value;

	var send_data1=
        "&language="+language+
        "&document_no="+document_no+
        "&document_type="+document_type+
        "&country_of_issue="+country_of_issue;

    ajax_changetab_and_send_data('files/document/search_document.php', 'status-action', send_data1);

}

function search_document_desc(){

   ge('status-action').innerHTML="<div class='alert alert-info' role='alert'><i class='fa fa-info-circle'></i> Please wait … Checking records ...</div>";
 
	var document_type=ge('document_type').value;
	var country_of_issue=ge('country_of_issue').value;
	var document_gender=ge('document_gender').value;
	var document_address=ge('document_address').value;
	var document_date=ge('document_date').value;

	var send_data1=
        "&document_type="+document_type+
        "&country_of_issue="+country_of_issue+
        "&document_gender="+document_gender+
        "&document_address="+document_address+
        "&document_date="+document_date;

    ajax_changetab_and_send_data('files/document/search_document_desc.php', 'status-action', send_data1);

}


function pay_momo(){

   ge('status-action').innerHTML="<div class='alert alert-info' role='alert' style='font-size:100%;'><i class='fa fa-info-circle'></i> Requesting payment transaction...</div>";
	ge('tobehidden').style="display:none";

	var phone_no=ge('phone_no').value;
	var lost_document_no=ge('lost_document_no').value;
	var document_type_momo=ge('document_type_momo').value;

	var send_data1=
        "&phone_no="+phone_no+
        "&lost_document_no="+lost_document_no+
       "&document_type_momo="+document_type_momo;

    ajax_changetab_and_send_data('../../files/payments/oltranz.php', 'status-action', send_data1);

}

function donate(){

   ge('status-action').innerHTML="<div class='alert alert-info' role='alert' style='font-size:100%;'><i class='fa fa-info-circle'></i> Requesting payment transaction...</div>";

	var phone_no=ge('phone_no').value;
	var amount=ge('amount').value;
	var lost_document_no=ge('lost_document_no').value;
	var document_type_momo=ge('document_type_momo').value;

	var send_data1=
        "&phone_no="+phone_no+
        "&amount="+amount+
        "&lost_document_no="+lost_document_no+
       "&document_type_momo="+document_type_momo;

    ajax_changetab_and_send_data('../../files/payments/oltranz.php', 'status-action', send_data1);

}


function lost_docs() {
	$("#status-action2").fadeOut(500);
}
 
function mark_found(docno1) {
  var doc_no = ge(docno1).innerHTML;
  ge('status-message').innerHTML = doc_no;
  ge('status-action').innerHTML = "<div class='sufee-alert alert with-close alert-warning alert-dismissible fade show'><span class='badge badge-pill badge-warning'>Warning</span> You are about to mark the lost document as found. Are you sure? <a href='#/' onclick='mark_found1()' class='alert-link'>Continue</a> <button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>";

}

function mark_found1() {
  var doc_no2 = ge('status-message').innerHTML;
  mark_found2(doc_no2);

}

function mark_found2(docid) {

  ge('status-action').innerHTML = "<div class='alert alert-info' role='alert'><i class='fa fa-info-circle'></i> Please wait ... clearing the document to found …</div>";

  var doc_no = docid;

  var send_data1 =
    "&doc_no=" + doc_no;

  ajax_changetab_and_send_data('../files/document/mark_found.php', 'status-action', send_data1);

  setTimeout(function () {
    lost_docs();
  }, 800);

}


function report_lost(){

   ge('status-action').innerHTML="<div class='alert alert-info' role='alert'><i class='fa fa-info-circle'></i> Reporting lost document…</div>";
   ge('tobehidden').style="display:none";
 
	var owner_names=ge('owner_names').value;
	var country_of_issue=ge('country_of_issue').value;
	var document_no=ge('document_no').value;
	var document_type=ge('document_type').value;
	var phone_no=ge('phone_no').value;
	var email_address=ge('email_address').value;

	var send_data1=
        "&owner_names="+owner_names+
        "&country_of_issue="+country_of_issue+
        "&document_no="+document_no+
        "&document_type="+document_type+
        "&phone_no="+phone_no+
		"&email_address="+email_address;

    ajax_changetab_and_send_data('../../files/document/report_lost.php', 'status-action', send_data1)

}


function request_lost(){

   ge('status-action').innerHTML="<div class='alert alert-info' role='alert'><i class='fa fa-info-circle'></i> Requesting lost document info…</div>";
   ge('tobehidden').style="display:none";
 
	var document_no=ge('document_no').value;
	var phone_no=ge('phone_no').value;
	var email_address=ge('email_address').value;

	var send_data1=
        "&document_no="+document_no+
        "&phone_no="+phone_no+
		"&email_address="+email_address;

    ajax_changetab_and_send_data('../../files/document/request_lost.php', 'status-action', send_data1);


setTimeout(function(){
window.location.href = "../../get-document/document-request/index-x.php?doc="+document_no;
}, 2000);

}

function LoadSectors(){

	var district = ge('district').value;

	var send_data1=
    "&district="+district;

	ajax_changetab_and_send_data('../files/document/loadsectors.php', 'sectorss', send_data1)

}

function LoadSectors1(){

	var district = ge('district').value;

	var send_data1=
    "&district="+district;

	ajax_changetab_and_send_data('files/document/loadsectors1.php', 'sectorss', send_data1)

}

function displayaddress(){

	var addr = ge('district').value + '/' + ge('sector').value;
	ge('document_address').value = addr;

}

function check_country(){

	var cou = ge('country_of_issue').value;

if (cou === 'Rwanda (RW)') {
  ge('district').style.display = 'block';
  ge('sector').style.display = 'block';
} else {
    ge('district').style.display = 'none';
  ge('sector').style.display = 'none';
}

}

function check_country1(){

	var cou = ge('country_of_issue').value;

if (cou === 'Rwanda (RW)') {
  ge('Addre').style.display = 'block';
  ge('Addre1').style.display = 'block';
} else {
    ge('Addre').style.display = 'none';
    ge('Addre1').style.display = 'none';
}

}


function get_districts(){

	var province=ge('province').value;
	var send_data1=
       "&province="+province;

    ajax_changetab_and_send_data6('../files/location/get_districts.php', 'district', send_data1);
}


function get_sectors(){

	var district=ge('district').value;
	var send_data1=
       "&district="+district;

    ajax_changetab_and_send_data6('../files/location/get_sectors.php', 'sector', send_data1);
}


function get_cells(){

	var sector=ge('sector').value;
	var send_data1=
       "&sector="+sector;

    ajax_changetab_and_send_data6('../files/location/get_cells.php', 'cell', send_data1);
}

function register_rpu_hq(){

   ge('status-action').innerHTML="<div class='alert alert-info' role='alert'><i class='fa fa-info-circle'></i> Registering RPU …</div>";
 
	var name=ge('name').value;
	var email=ge('email').value;
	var province=ge('province').value;
	var district=ge('district').value;
	var sector=ge('sector').value;
	var cell=ge('cell').value;
	var address_location=ge('address_location').value;
	var address_building_number=ge('address_building_number').value;
	var address_building_floor=ge('address_building_floor').value;
	var phone_no=ge('phone_no').value;
	var username=ge('username').value;
	var password=ge('password').value;
	var confpassword=ge('confpassword').value;

	var send_data1=
        "&name="+name+
        "&email="+email+
        "&province="+province+
        "&district="+district+
        "&sector="+sector+
        "&cell="+cell+
        "&address_location="+address_location+
        "&address_building_number="+address_building_number+
        "&address_building_floor="+address_building_floor+
        "&phone_no="+phone_no+
		"&username="+username+
        "&password="+password+
		"&confpassword="+confpassword;

    ajax_changetab_and_send_data('../files/institution/register_rpu_hq.php', 'status-action', send_data1)

}

function get_districts2(){

	var relation=ge('relation').value;
	var send_data1=
       "&relation="+relation;

    ajax_changetab_and_send_data6('../files/location/get_districts2.php', 'district', send_data1);
}

function keep_province(){

	var relation=ge('relation').value;
	var send_data1=
       "&relation="+relation;

    ajax_changetab_and_send_data7('../files/location/keep_province.php', 'province', send_data1);
}


function get_sectors2(){

	var district=ge('district').value;
	var send_data1=
       "&district="+district;

    ajax_changetab_and_send_data6('../files/location/get_sectors2.php', 'sector', send_data1);
}


function get_cells2(){

	var sector=ge('sector').value;
	var send_data1=
       "&sector="+sector;

    ajax_changetab_and_send_data6('../files/location/get_cells2.php', 'cell', send_data1);
}


function register_dpu_hq(){

   ge('status-action').innerHTML="<div class='alert alert-info' role='alert'><i class='fa fa-info-circle'></i> Registering DPU …</div>";
 
var province1 = (ge('province').value).substring(1);

	var name=ge('name').value;
	var email=ge('email').value;
	var province=province1;
	var district=ge('district').value;
	var sector=ge('sector').value;
	var cell=ge('cell').value;
	var address_location=ge('address_location').value;
	var address_building_number=ge('address_building_number').value;
	var address_building_floor=ge('address_building_floor').value;
	var phone_no=ge('phone_no').value;
	var username=ge('username').value;
	var password=ge('password').value;
	var confpassword=ge('confpassword').value;
	var relation=ge('relation').value;

	var send_data1=
        "&name="+name+
        "&email="+email+
        "&province="+province+
        "&district="+district+
        "&sector="+sector+
        "&cell="+cell+
        "&address_location="+address_location+
        "&address_building_number="+address_building_number+
        "&address_building_floor="+address_building_floor+
        "&phone_no="+phone_no+
		"&username="+username+
        "&password="+password+
		"&confpassword="+confpassword+
		"&relation="+relation;

    ajax_changetab_and_send_data('../files/institution/register_dpu_hq.php', 'status-action', send_data1)

}

function keep_district(){

	var relation=ge('relation').value;
	var send_data1=
       "&relation="+relation;

    ajax_changetab_and_send_data7('../files/location/keep_district.php', 'district', send_data1);
}


function get_sectors3(){

	var relation=ge('relation').value;
	var send_data1=
       "&relation="+relation;

    ajax_changetab_and_send_data6('../files/location/get_sectors3.php', 'sector', send_data1);
}


function get_cells3(){

	var sector=ge('sector').value;
	var send_data1=
       "&sector="+sector;

    ajax_changetab_and_send_data6('../files/location/get_cells3.php', 'cell', send_data1);
}

function register_station_hq(){

   ge('status-action').innerHTML="<div class='alert alert-info' role='alert'><i class='fa fa-info-circle'></i> Registering Station …</div>";
 
var province1 = (ge('province').value).substring(1);
var district1 = (ge('district').value).substring(1);

	var name=ge('name').value;
	var email=ge('email').value;
	var province=province1;
	var district=district1;
	var sector=ge('sector').value;
	var cell=ge('cell').value;
	var address_location=ge('address_location').value;
	var address_building_number=ge('address_building_number').value;
	var address_building_floor=ge('address_building_floor').value;
	var phone_no=ge('phone_no').value;
	var username=ge('username').value;
	var password=ge('password').value;
	var confpassword=ge('confpassword').value;
	var relation=ge('relation').value;

	var send_data1=
        "&name="+name+
        "&email="+email+
        "&province="+province+
        "&district="+district+
        "&sector="+sector+
        "&cell="+cell+
        "&address_location="+address_location+
        "&address_building_number="+address_building_number+
        "&address_building_floor="+address_building_floor+
        "&phone_no="+phone_no+
		"&username="+username+
        "&password="+password+
		"&confpassword="+confpassword+
		"&relation="+relation;

    ajax_changetab_and_send_data('../files/institution/register_station_hq.php', 'status-action', send_data1)

}

function keep_sector(){

	var relation=ge('relation').value;
	var send_data1=
       "&relation="+relation;

    ajax_changetab_and_send_data7('../files/location/keep_sector.php', 'sector', send_data1);
}


function get_cells4(){

	var relation=ge('relation').value;
	var send_data1=
       "&relation="+relation;

    ajax_changetab_and_send_data6('../files/location/get_cells4.php', 'cell', send_data1);
}


function register_post_hq(){

   ge('status-action').innerHTML="<div class='alert alert-info' role='alert'><i class='fa fa-info-circle'></i> Registering Post …</div>";
 
var province1 = (ge('province').value).substring(1);
var district1 = (ge('district').value).substring(1);
var sector1 = (ge('sector').value).substring(1);

	var name=ge('name').value;
	var email=ge('email').value;
	var province=province1;
	var district=district1;
	var sector=sector1;
	var cell=ge('cell').value;
	var address_location=ge('address_location').value;
	var address_building_number=ge('address_building_number').value;
	var address_building_floor=ge('address_building_floor').value;
	var phone_no=ge('phone_no').value;
	var username=ge('username').value;
	var password=ge('password').value;
	var confpassword=ge('confpassword').value;
	var relation=ge('relation').value;

	var send_data1=
        "&name="+name+
        "&email="+email+
        "&province="+province+
        "&district="+district+
        "&sector="+sector+
        "&cell="+cell+
        "&address_location="+address_location+
        "&address_building_number="+address_building_number+
        "&address_building_floor="+address_building_floor+
        "&phone_no="+phone_no+
		"&username="+username+
        "&password="+password+
		"&confpassword="+confpassword+
		"&relation="+relation;

    ajax_changetab_and_send_data('../files/institution/register_post_hq.php', 'status-action', send_data1)

}

function check_dpu(){

	var cou = ge('dpu').value;

if (cou === '') {
  ge('sel_p_p').style.display = 'none';
  ge('institution').style.display = 'none';

} else {
  ge('sel_p_p').style.display = 'block';
  ge('institution').style.display = 'block';
}

}

function load_p_p(){

	var sel_p_p = ge('sel_p_p').value;
	var dpu = ge('dpu').value;

	var send_data1=
    "&sel_p_p="+sel_p_p+
	"&dpu="+dpu;

	ajax_changetab_and_send_data6('../files/document/load_p_p_1.php', 'institution', send_data1)

}

function get_iframe(doc_no){
	var doc_no_real = ge(doc_no).value;
	ge('update-div').innerHTML = "<iframe src='update-document.php?doc="+doc_no_real+" scrolling='no' title='Update document' style='min-width: 100%;width: 100px;*width: 100%;height:500px;'></iframe><br><button class='btn btn-danger' onclick='dismiss_iframe()'>Close</button>";
}

function dismiss_iframe(){
	ge('update-div').innerHTML = "";
}


function update_document(){

   ge('status-action').innerHTML="<div class='alert alert-info' role='alert'><i class='fa fa-info-circle'></i> Updating document …</div>";
 
	var doc_no=ge('doc_no').value;
	var owner_names=ge('owner_names').value;
	var country_of_issue=ge('country_of_issue').value;
	var document_no=ge('document_no').value;
	var document_type=ge('document_type').value;
	var institution=ge('institution').value;
	var document_address=ge('document_address').value;
	var document_gender=ge('document_gender').value;
	var document_date=ge('document_date').value;

	var send_data1=
        "&doc_no="+doc_no+
        "&owner_names="+owner_names+
        "&country_of_issue="+country_of_issue+
        "&document_no="+document_no+
        "&document_type="+document_type+
        "&institution="+institution+
		"&document_address="+document_address+
        "&document_gender="+document_gender+
        "&document_date="+document_date;

    ajax_changetab_and_send_data('../files/document/update_document.php', 'status-action', send_data1)

}

function exptb(elem) {
  var table = document.getElementById("dataTable");
  var html = table.outerHTML;
  var url = 'data:application/vnd.ms-excel,' + escape(html); // Set your html table into url 
  elem.setAttribute("href", url);
  elem.setAttribute("download", "export.xls"); // Choose the file name
  return false;
}





