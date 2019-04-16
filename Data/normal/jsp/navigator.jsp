<%-- 
    Document   : navigator
    Created on : Mar 2, 2015, 7:13:15 PM
    Author     : chenliyuquan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <div class="navigation-strip">
                   
			<h4>Your professional wine provider<i class="arrow"></i></h4>
			<div class="top-menu">
				<!-- start header menu -->
		<ul class="megamenu skyblue">
                    <li><a class="color9" href="products.jsp">All Wines
                        </a>
                        <%

    

	wss.CatelogueMgtWS_Service service100 = new wss.CatelogueMgtWS_Service();

	wss.CatelogueMgtWS port100 = service100.getCatelogueMgtWSPort();

	// TODO process result here

	java.util.List<wss.CategoryEntity> result100 = port100.getAllCategory();
        java.util.List<wss.WineryEntity> result200 = port100.getAllWinery();
        java.util.List<wss.RegionEntity> result300 = port100.getAllRegion();
    

            %>
				<div class="megapanel">
					<div class="row">
						<div class="col2">
							<div class="h_nav">
								<h4>Category</h4>
								<ul>
                                                                    <%

            for(wss.CategoryEntity o: result100){
                %>

              
                <li><a href="advancedSearch.jsp?category=<%out.print(o.getCategoryName());%>&winery=All&region=All"><%out.print(o.getCategoryName());%></a></li>
                <%} %>
								</ul>	
							</div>							
						</div>
						<div class="col2">
							<div class="h_nav">
								<h4>Winery</h4>
								<ul>
									<%for(wss.WineryEntity o: result200){
                %>

              
                <li><a href="advancedSearch.jsp?winery=<%out.print(o.getWineryName());%>&category=All&region=All"><%out.print(o.getWineryName());%></a></li>
                <%} %>
								</ul>	
							</div>							
						</div>
						<div class="col2">
							<div class="h_nav">
								<h4>Region</h4>
								<ul>
									<%for(wss.RegionEntity o: result300){
                %>

              
                <li><a href="advancedSearch.jsp?region=<%out.print(o.getRegionName());%>&winery=All&category=All"><%out.print(o.getRegionName());%></a></li>
                <%} %>
								</ul>	
							</div>												
						</div>
						
					</div>
					<div class="row">
	
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>
				
<!--					<div class="megapanel">
					<div class="row">
						<div class="col2">
							<div class="h_nav">
								<h4>Western</h4>
								<ul>
									<li><a href="sarees.jsp">Burgers</a></li>
									<li><a href="sarees.jsp">Pasta</a></li>
									<li><a href="sarees.jsp">Grilled fish</a></li>

								</ul>	
							</div>							
						</div>
						<div class="col2">
							<div class="h_nav">
								<h4>Asian</h4>
								<ul>
									<li><a href="sarees.jsp">Naan</a></li>
									<li><a href="sarees.jsp">Chinese food</a></li>
									<li><a href="sarees.jsp">Japanese salad</a></li>
					
								</ul>	
							</div>							
						</div>
						<div class="col2">
							<div class="h_nav">
								<h4>Snacks</h4>
								<ul>
									<li><a href="sarees.jsp">Fries</a></li>
									<li><a href="sarees.jsp">Peanuts</a></li>
									<li><a href="sarees.jsp">Bread</a></li>
									
								</ul>	
							</div>												
						</div>
	
					</div>
					<div class="row">
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						
					</div>
    			  </div>-->
				
				<li><a class="color1" href="advancedSearch.jsp?category=gift&winery=All&region=All">Gift Center</a>
<!--					<div class="megapanel">
					<div class="row">
						<div class="col2">
							<div class="h_nav">
								<h4>Super value bundle</h4>
								<ul>
									<li><a href="products.jsp">bundle1</a></li>
									<li><a href="products.jsp">bundle2</a></li>
									<li><a href="products.jsp">bundle3</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col2">
							<div class="h_nav">
								<h4>Business bundle</h4>
								<ul>
									<li><a href="products.jsp">Business1</a></li>
									<li><a href="products.jsp">Business2</a></li>
									<li><a href="products.jsp">Business3</a></li>
									
								</ul>	
							</div>							
						</div>
						<div class="col2">
							<div class="h_nav">
								<h4>Party    bundle</h4>
								<ul>
									<li><a href="products.jsp">Party bundle1</a></li>
									<li><a href="products.jsp">Party bundle2</a></li>
									<li><a href="products.jsp">Party bundle3</a></li>
									
								</ul>	
							</div>												
						</div>
						
					</div>
					<div class="row">
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						
					</div>
    				</div>-->
                                </li>
                                <%if (session.getAttribute("userid")!=null){ %>
                                <li><a class="color5" href="purchaseHistory.jsp">Purchase History</a></li>
                                <%} %>
				<li><a class="color10" href="#">General</a>
					<div class="megapanel">
					<div class="row">
						<div class="col2">
							<div class="h_nav">
								<h4>Account</h4>
								<ul>
									<li><a href="register.jsp">Register</a></li>
									<li><a href="login.jsp">Login</a></li>
								</ul>	
							</div>							
						</div>
						
<!--						<div class="col2">
							<div class="h_nav">
								<h4>help</h4>
								<ul>
									<li><a href="products.jsp">Contact us</a></li>
								</ul>	
							</div>							
						</div>-->
						<div class="col2">
							<div class="h_nav">
								<h4>About us</h4>
								<ul>
									<li><a href="contact.jsp">Company info</a></li>
									<li><a href="contact.jsp">Location</a></li>
									
								</ul>	
							</div>												
						</div>
						
					</div>
					<div class="row">
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>
				<li><a class="color2" href="#"></a>
                                    <div class="megapanel" hidden="true" >
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>shop</h4>
								<ul>
									<li><a href="products.jsp">new arrivals</a></li>
									<li><a href="products.jsp">men</a></li>
									<li><a href="products.jsp">women</a></li>
									<li><a href="products.jsp">accessories</a></li>
									<li><a href="products.jsp">kids</a></li>
									<li><a href="products.jsp">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>help</h4>
								<ul>
									<li><a href="products.jsp">trends</a></li>
									<li><a href="products.jsp">sale</a></li>
									<li><a href="products.jsp">style videos</a></li>
									<li><a href="products.jsp">accessories</a></li>
									<li><a href="products.jsp">kids</a></li>
									<li><a href="products.jsp">style videos</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>my company</h4>
								<ul>
									<li><a href="products.jsp">trends</a></li>
									<li><a href="products.jsp">sale</a></li>
									<li><a href="products.jsp">style videos</a></li>
									<li><a href="products.jsp">accessories</a></li>
									<li><a href="products.jsp">kids</a></li>
									<li><a href="products.jsp">style videos</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>account</h4>
								<ul>
									<li><a href="products.jsp">login</a></li>
									<li><a href="products.jsp">create an account</a></li>
									<li><a href="products.jsp">create wishlist</a></li>
									<li><a href="products.jsp">my shopping bag</a></li>
									<li><a href="products.jsp">brands</a></li>
									<li><a href="products.jsp">create wishlist</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>my company</h4>
								<ul>
									<li><a href="products.jsp">trends</a></li>
									<li><a href="products.jsp">sale</a></li>
									<li><a href="products.jsp">style videos</a></li>
									<li><a href="products.jsp">accessories</a></li>
									<li><a href="products.jsp">kids</a></li>
									<li><a href="products.jsp">style videos</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>popular</h4>
								<ul>
									<li><a href="products.jsp">new arrivals</a></li>
									<li><a href="products.jsp">men</a></li>
									<li><a href="products.jsp">women</a></li>
									<li><a href="products.jsp">accessories</a></li>
									<li><a href="products.jsp">kids</a></li>
									<li><a href="products.jsp">style videos</a></li>
								</ul>	
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>
				
		 </ul> 
	</div>
		<div class="clearfix"></div>
		</div>
</html>
