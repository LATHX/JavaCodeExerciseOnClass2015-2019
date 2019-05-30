<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>结算</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<!--Link CSS Start-->		
	<jsp:include page="quote_css.jsp" flush="false"></jsp:include>
    <!--End of Link CSS -->		

  </head>
  
  <body>
       <!--Header Start Area-->
	   <jsp:include page="header.jsp" flush="true"></jsp:include>
       <!--End of Header Area-->
            <!--Breadcrumb Start-->
        <div class="breadcrumb-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <ul class="breadcrumb">
                            <li><a href="user/index.jsp"><i class="fa fa-home"></i></a></li>
                            <li><a href="#">Checkout</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--End of Breadcrumb-->
        <!-- Checkout Area start -->
        <div class="checkout-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingOne">
                                    <h4 class="panel-title">
                                        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#checkout">Step 1: Checkout Options <i class="fa fa-caret-down"></i></a>
                                    </h4>
                                </div>
                                <div id="checkout" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                    <div class="panel-body">
                                        <div class="account-area row">
                                            <div class="col-md-6">
                                                <div class="account-section">
                                                    <h2>New Customer</h2>
                                                    <p class="strong">Checkout Options:</p>
                                                    <div class="radio">
                                                        <label>
                                                        <input type="radio" checked="checked" value="register" name="account">Register Account</label>
                                                    </div>
                                                    <div class="radio">
                                                        <label>
                                                        <input type="radio" value="guest" name="account">Guest Checkout</label>
                                                    </div>
                                                    <p>By creating an account you will be able to shop faster, be up to date on an order's status, and keep track of the orders you have previously made.</p>
                                                    <a class="btn btn-primary login-register" href="#">Continue</a>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="account-section right-side">
                                                    <h2>Returning Customer</h2>
                                                    <p class="strong">I am a returning customer</p>
                                                    <form  method="post" action="#">
                                                        <div class="form-group">
                                                            <label class="control-label">E-Mail Address</label>
                                                            <input type="text" class="form-control" id="input-email" placeholder="E-Mail Address" value="" name="email">
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label">Password</label>
                                                            <input type="password" class="form-control" id="input-password" placeholder="Password" value="" name="password">
                                                            <a href="#">Forgotten Password</a>
                                                        </div>
                                                        <input type="submit" class="btn btn-primary" value="Login">
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingTwo">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#billing">Step 2: Billing Details <i class="fa fa-caret-down"></i></a>
                                    </h4>
                                </div>
                                <div id="billing" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                    <div class="panel-body">
                                        <form action="#" method="post">
                                            <div class="radio">
                                                <label>
                                                    <input id="ship-box" type="radio" checked="checked" value="exist_address" name="address_billing">I want to use an existing address</label>
                                            </div>
                                            <div id="ship-box-info">
                                                <select class="form-control" name="address_num">
                                                    <option selected="selected" value="01" id="shipping-add">Dhaka, Bangladesh</option>
                                                </select>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input id="shipping-box" type="radio" value="new_address" name="address_billing">I want to use a new address
                                                </label>
                                            </div>
                                            <div id="shipping-box-info">
                                                <div class="form-group required">
                                                    <label class="col-md-2 col-sm-3 control-label">First Name</label>
                                                    <div class="col-md-10 col-sm-9">
                                                        <input type="text" class="form-control" id="input-payment-fname" placeholder="First Name" value="" name="firstname">
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-md-2 col-sm-3 control-label">Last Name</label>
                                                    <div class="col-md-10 col-sm-9">
                                                        <input type="text" class="form-control" id="input-payment-lastname" placeholder="Last Name" value="" name="lastname">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-2 col-sm-3 control-label">Company</label>
                                                    <div class="col-md-10 col-sm-9">
                                                        <input type="text" class="form-control" id="input-company" placeholder="Company" value="" name="company">
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-md-2 col-sm-3 control-label">Address 1</label>
                                                    <div class="col-md-10 col-sm-9">
                                                        <input type="text" class="form-control" id="input-address-one" placeholder="Address 1" value="" name="address_one">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-2 col-sm-3 control-label">Address 2</label>
                                                    <div class="col-md-10 col-sm-9">
                                                        <input type="text" class="form-control" id="input-address-2" placeholder="Address 2" value="" name="address_two">
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-md-2 col-sm-3 control-label">City</label>
                                                    <div class="col-md-10 col-sm-9">
                                                        <input type="text" class="form-control" id="input-city" placeholder="City" value="" name="city">
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-md-2 col-sm-3 control-label">Post Code</label>
                                                    <div class="col-md-10 col-sm-9">
                                                        <input type="text" class="form-control" id="input-payment" placeholder="Post Code" value="" name="postcode">
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-md-2 col-sm-3 control-label"> Country </label>
                                                    <div class="col-md-10 col-sm-9">
                                                        <select class="form-control" id="billing-country" name="country_id">
                                                            <option value=""> --- Please Select --- </option>
                                                            <option value="1">Aaland Islands</option>
                                                            <option value="2">Afghanistan</option>
                                                            <option value="3">Algeria</option>
                                                            <option value="4">American Samoa</option>
                                                            <option value="5">Andorra</option>
                                                            <option value="6">Angola</option>
                                                            <option value="7">Antigua and Barbuda</option>
                                                            <option value="8">Ascension Island (British)</option>
                                                            <option value="9">Australia</option>
                                                            <option value="10">Bangladesh</option>
                                                            <option value="11">Barbados</option>
                                                            <option value="12">Canada</option>
                                                            <option value="13">Chad</option>
                                                            <option value="14">Chile</option>
                                                            <option value="15">China</option>
                                                            <option value="16">Colombia</option>
                                                            <option value="17">Denmark</option>
                                                            <option value="18">Egypt</option>
                                                            <option value="19">Ethiopia</option>
                                                            <option value="20">France</option>
                                                            <option value="21">Germany</option>
                                                            <option value="22">Hong Kong</option>
                                                            <option value="23">Lesotho</option>
                                                            <option value="24">Liberia</option>
                                                            <option value="25">Luxembourg</option>
                                                            <option value="26">Malawi</option>
                                                            <option value="27">Malaysia</option>
                                                            <option value="28">Maldives</option>
                                                            <option value="29">Mongolia</option>
                                                            <option value="30">Montenegro</option>
                                                            <option value="31">Montserrat</option>
                                                            <option value="32">Morocco</option>
                                                            <option value="33">Panama</option>
                                                            <option value="34">Papua New Guinea</option>
                                                            <option value="35">Paraguay</option>
                                                            <option value="36">Peru</option>
                                                            <option value="37">Philippines</option>
                                                            <option value="38">Puerto Rico</option>
                                                            <option value="39">Qatar</option>
                                                            <option value="40">Zambia</option>
                                                            <option value="41">Zimbabwe</option>
                                                        </select> 
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-md-2 col-sm-3 control-label"> Region / State </label>
                                                    <div class="col-md-10 col-sm-9">
                                                        <select class="form-control" id="billing-city" name="country">
                                                            <option value=""> --- Please Select --- </option>
                                                            <option value="1">Aberdeenshire</option>
                                                            <option value="2">Angus</option>
                                                            <option value="3">Bedfordshire</option>
                                                            <option value="4">Berkshire</option>
                                                            <option value="5">Buckinghamshire</option>
                                                            <option value="6">Cambridgeshire</option>
                                                            <option value="7">Denbighshire</option>
                                                            <option value="8">Devon</option>
                                                            <option value="9">Durham</option>
                                                            <option value="10">East Ayrshire</option>
                                                            <option value="11">East Renfrewshire</option>
                                                            <option value="12">Edinburgh</option>
                                                            <option value="13">Greater Manchester</option>
                                                            <option value="14">Hampshire</option>
                                                            <option value="15">Inverclyde</option>
                                                            <option value="16">Isle of Wight</option>
                                                            <option value="17">Merseyside</option>
                                                            <option value="18">Midlothian</option>
                                                            <option value="19">Moray</option>
                                                            <option value="20">Neath Port Talbot</option>
                                                            <option value="21">North Lanarkshire</option>
                                                            <option value="22">Northumberland</option>
                                                            <option value="23">Orkney Islands</option>
                                                            <option value="24">Pembrokeshire</option>
                                                            <option value="25">Powys</option>
                                                            <option value="26">Rhondda Cynon Taff</option>
                                                            <option value="27">South Ayrshire</option>
                                                            <option value="28">Suffolk</option>
                                                            <option value="29">Tyne and Wear</option>
                                                            <option value="30">Wiltshire</option>
                                                            <option value="31">Wrexham</option>
                                                        </select> 
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="buttons">
                                                        <div class="pull-right"><a class="btn btn-primary" href="#">Continue</a></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingThree">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#delivery">Step 3: Delivery Details <i class="fa fa-caret-down"></i></a>
                                    </h4>
                                </div>
                                <div id="delivery" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                    <div class="panel-body">
                                        <form action="#" method="post">
                                            <div class="radio">
                                                <label>
                                                    <input id="delivery-add" type="radio" checked="checked" value="existing_address" name="address_payment">I want to use an existing address</label>
                                            </div>
                                            <div id="delivery-add-info">
                                                <select class="form-control" name="address_num">
                                                    <option selected="selected" value="01" >Dhaka, Bangladesh</option>
                                                </select>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input id="delivery-new-add" type="radio" value="new" name="address_payment">I want to use a new address
                                                </label>
                                            </div>
                                            <div id="delivery-new-add-info">
                                                <div class="form-group required">
                                                    <label class="col-md-2 col-sm-3 control-label">First Name</label>
                                                    <div class="col-md-10 col-sm-9">
                                                        <input type="text" class="form-control" id="input-payment-firstname" placeholder="First Name" value="" name="firstname">
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-md-2 col-sm-3 control-label">Last Name</label>
                                                    <div class="col-md-10 col-sm-9">
                                                        <input type="text" class="form-control" id="input-lastname" placeholder="Last Name" value="" name="lastname">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-2 col-sm-3 control-label">Company</label>
                                                    <div class="col-md-10 col-sm-9">
                                                        <input type="text" class="form-control" id="input-payment-company" placeholder="Company" value="" name="company">
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-md-2 col-sm-3 control-label">Address 1</label>
                                                    <div class="col-md-10 col-sm-9">
                                                        <input type="text" class="form-control" id="input-address-1" placeholder="Address 1" value="" name="address_one">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-2 col-sm-3 control-label">Address 2</label>
                                                    <div class="col-md-10 col-sm-9">
                                                        <input type="text" class="form-control" id="input-payment-address-2" placeholder="Address 2" value="" name="address_two">
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-md-2 col-sm-3 control-label">City</label>
                                                    <div class="col-md-10 col-sm-9">
                                                        <input type="text" class="form-control" id="input-payment-city" placeholder="City" value="" name="city">
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-md-2 col-sm-3 control-label">Post Code</label>
                                                    <div class="col-md-10 col-sm-9">
                                                        <input type="text" class="form-control" id="input-payment-postcode" placeholder="Post Code" value="" name="postcode">
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-md-2 col-sm-3 control-label"> Country </label>
                                                    <div class="col-md-10 col-sm-9">
                                                        <select class="form-control" id="delivery-country" name="country_id">
                                                            <option value=""> --- Please Select --- </option>
                                                            <option value="1">Aaland Islands</option>
                                                            <option value="2">Afghanistan</option>
                                                            <option value="3">Algeria</option>
                                                            <option value="4">American Samoa</option>
                                                            <option value="5">Andorra</option>
                                                            <option value="6">Angola</option>
                                                            <option value="7">Antigua and Barbuda</option>
                                                            <option value="8">Ascension Island (British)</option>
                                                            <option value="9">Australia</option>
                                                            <option value="10">Bangladesh</option>
                                                            <option value="11">Barbados</option>
                                                            <option value="12">Canada</option>
                                                            <option value="13">Chad</option>
                                                            <option value="14">Chile</option>
                                                            <option value="15">China</option>
                                                            <option value="16">Colombia</option>
                                                            <option value="17">Denmark</option>
                                                            <option value="18">Egypt</option>
                                                            <option value="19">Ethiopia</option>
                                                            <option value="20">France</option>
                                                            <option value="21">Germany</option>
                                                            <option value="22">Hong Kong</option>
                                                            <option value="23">Lesotho</option>
                                                            <option value="24">Liberia</option>
                                                            <option value="25">Luxembourg</option>
                                                            <option value="26">Malawi</option>
                                                            <option value="27">Malaysia</option>
                                                            <option value="28">Maldives</option>
                                                            <option value="29">Mongolia</option>
                                                            <option value="30">Montenegro</option>
                                                            <option value="31">Montserrat</option>
                                                            <option value="32">Morocco</option>
                                                            <option value="33">Panama</option>
                                                            <option value="34">Papua New Guinea</option>
                                                            <option value="35">Paraguay</option>
                                                            <option value="36">Peru</option>
                                                            <option value="37">Philippines</option>
                                                            <option value="38">Puerto Rico</option>
                                                            <option value="39">Qatar</option>
                                                            <option value="40">Zambia</option>
                                                            <option value="41">Zimbabwe</option>
                                                        </select> 
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-md-2 col-sm-3 control-label"> Region / State </label>
                                                    <div class="col-md-10 col-sm-9">
                                                        <select class="form-control" id="delivery-city" name="country_id">
                                                            <option value=""> --- Please Select --- </option>
                                                            <option value="1">Aberdeenshire</option>
                                                            <option value="2">Angus</option>
                                                            <option value="3">Bedfordshire</option>
                                                            <option value="4">Berkshire</option>
                                                            <option value="5">Buckinghamshire</option>
                                                            <option value="6">Cambridgeshire</option>
                                                            <option value="7">Denbighshire</option>
                                                            <option value="8">Devon</option>
                                                            <option value="9">Durham</option>
                                                            <option value="10">East Ayrshire</option>
                                                            <option value="11">East Renfrewshire</option>
                                                            <option value="12">Edinburgh</option>
                                                            <option value="13">Greater Manchester</option>
                                                            <option value="14">Hampshire</option>
                                                            <option value="15">Inverclyde</option>
                                                            <option value="16">Isle of Wight</option>
                                                            <option value="17">Merseyside</option>
                                                            <option value="18">Midlothian</option>
                                                            <option value="19">Moray</option>
                                                            <option value="20">Neath Port Talbot</option>
                                                            <option value="21">North Lanarkshire</option>
                                                            <option value="22">Northumberland</option>
                                                            <option value="23">Orkney Islands</option>
                                                            <option value="24">Pembrokeshire</option>
                                                            <option value="25">Powys</option>
                                                            <option value="26">Rhondda Cynon Taff</option>
                                                            <option value="27">South Ayrshire</option>
                                                            <option value="28">Suffolk</option>
                                                            <option value="29">Tyne and Wear</option>
                                                            <option value="30">Wiltshire</option>
                                                            <option value="31">Wrexham</option>
                                                        </select> 
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="buttons">
                                                        <div class="pull-right"><a class="btn btn-primary" href="#">Continue</a></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingFour">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#delivery_method">Step 4: Delivery Method <i class="fa fa-caret-down"></i></a>
                                    </h4>
                                </div>
                                <div id="delivery_method" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                                    <div class="panel-body">
                                        <p>Please select the preferred shipping method to use on this order.</p>
                                        <p class="strong">Flat Rate</p>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" checked="checked" value="ship-rate" name="shipping_method">Flat Shipping Rate - $5.00</label>
                                        </div>
                                        <p class="strong">Add Comments About Your Order</p>
                                        <textarea class="form-control" rows="8" name="comments"></textarea>
                                        <div class="buttons">
                                            <div class="pull-right"><a class="btn btn-primary" href="#">Continue</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingFive">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#payment_method">Step 5: Payment Method <i class="fa fa-caret-down"></i></a>
                                    </h4>
                                </div>
                                <div id="payment_method" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
                                    <div class="panel-body">
                                        <p>Please select the preferred payment method to use on this order.</p>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" checked="checked" value="payment-method" name="payment_method">Cash On Delivery </label>
                                        </div>
                                        <p class="strong">Add Comments About Your Order</p>
                                        <textarea class="form-control" rows="8" name="comments"></textarea>
                                        <div class="buttons">
                                            <div class="pull-right">
                                                <span>I have read and agree to the </span>
                                                <a class="agree" href="#"><b>Terms &amp; Conditions</b></a>
                                                <input type="checkbox" value="1" name="agree">
                                                <a class="btn btn-primary" href="#">Continue</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingSix">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#confirm_order">Step 6: Confirm Order <i class="fa fa-caret-down"></i></a>
                                    </h4>
                                </div>
                                <div id="confirm_order" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix">
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <table class="table-content table-hover">
                                                <thead>
                                                    <tr>
                                                        <td>Product Name</td>
                                                        <td>Model</td>
                                                        <td>Quantity</td>
                                                        <td>Unit Price</td>
                                                        <td>Total</td>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td><a href="#">alteration </a></td>
                                                        <td>Product 7</td>
                                                        <td>1</td>
                                                        <td>$20.00</td>
                                                        <td>$20.00</td>
                                                    </tr>
                                                    <tr>
                                                        <td><a href="#">variations </a></td>
                                                        <td>Product 9</td>
                                                        <td>1</td>
                                                        <td>$1,580.00</td>
                                                        <td>$1,580.00</td>
                                                    </tr>
                                                    <tr>
                                                        <td><a href="#">many variations</a></td>
                                                        <td>product 11</td>
                                                        <td>1</td>
                                                        <td>$30.00</td>
                                                        <td>$30.00</td>
                                                    </tr>
                                                    <tr>
                                                        <td><a href="#">specimen </a></td>
                                                        <td>Product 14</td>
                                                        <td>2</td>
                                                        <td>$300.00</td>
                                                        <td>$600.00</td>
                                                    </tr>
                                                </tbody>
                                                <tfoot>
                                                    <tr>
                                                        <td colspan="4"><strong>Sub-Total:</strong></td>
                                                        <td>$2,230.00</td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4"><strong>Flat Shipping Rate:</strong></td>
                                                        <td>$5.00</td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4"><strong>Total:</strong></td>
                                                        <td>$2,235.00</td>
                                                    </tr>
                                                </tfoot>
                                            </table>
                                        </div>
                                        <div class="buttons">
                                            <div class="pull-right"><a class="btn btn-primary" href="#">Confirm Order</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--End of Checkout Area-->	
         <!--Footer Start-->
        <jsp:include page="footer.jsp" flush="true"></jsp:include>
        <!--End of Footer-->
        
   		<!-- JS Start -->
   		<jsp:include page="quote_js.jsp" flush="true"></jsp:include>
   		<!-- End of JS -->
  </body>
</html>
