<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BugsBunny.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    		<!-- Start Hero Section -->
			<div class="hero">
				<div class="container">
					<div class="row justify-content-between">
						<div class="col-lg-5">
							<div class="intro-excerpt">
								<h1>Bugs Bunny <span clsas="d-block">tu mejor opción</span></h1>
								<p class="mb-4">Elije el conejo que prefieras, tu cría, vende, comes :(.</p>
								<p><a href="" class="btn btn-secondary me-2">Comprar ahora</a><a href="#" class="btn btn-white-outline">Explorar</a></p>
							</div>
						</div>
						<div class="col-lg-7">
							<div class="hero-img-wrap">
								<img src="Content/images/conejo_port.png" class="img-fluid">
							</div>
						</div>
					</div>
				</div>
			</div>
		<!-- End Hero Section -->

		<!-- Start Product Section -->
		<div class="product-section">
			<div class="container">
				<div class="row">

					<!-- Start Column 1 -->
					<div class="col-md-12 col-lg-3 mb-5 mb-lg-0">
						<h2 class="mb-4 section-title">Alimentados con los mejores productos</h2>
						<p class="mb-4">Para alimentar a nuestros conejos, utilizamos los mejores alimentos para garantizar su salud y calidad </p>
						<p><a href="default.aspx" class="btn">Explorar</a></p>
					</div> 
					<!-- End Column 1 -->

					<!-- Start Column 2 -->
					<div class="col-12 col-md-4 col-lg-3 mb-5 mb-md-0">
						<a class="product-item" href="default.aspx">
							<img src="images/conejo4.jpeg" class="img-fluid product-thumbnail">
							<h3 class="product-title">Conejo Borgoña</h3>
							<strong class="product-price">$50.00</strong>

							<span class="icon-cross">
								<img src="Content/images/cross.svg" class="img-fluid">
							</span>
						</a>
					</div> 
					<!-- End Column 2 -->

					<!-- Start Column 3 -->
					<div class="col-12 col-md-4 col-lg-3 mb-5 mb-md-0">
						<a class="product-item" href="default.aspx">
							<img src="images/conejo3.jpg" class="img-fluid product-thumbnail">
							<h3 class="product-title">Angora Inglés</h3>
							<strong class="product-price">$78.00</strong>

							<span class="icon-cross">
								<img src="Content/images/cross.svg" class="img-fluid">
							</span>
						</a>
					</div>
					<!-- End Column 3 -->

					<!-- Start Column 4 -->
					<div class="col-12 col-md-4 col-lg-3 mb-5 mb-md-0">
						<a class="product-item" href="default.aspx">
							<img src="images/conejo2.jpeg" class="img-fluid product-thumbnail">
							<h3 class="product-title">Rex</h3>
							<strong class="product-price">$43.00</strong>

							<span class="icon-cross">
								<img src="Content/images/cross.svg" class="img-fluid">
							</span>
						</a>
					</div>
					<!-- End Column 4 -->

				</div>
			</div>
		</div>
		<!-- End Product Section -->

		<!-- Start Why Choose Us Section -->
		<div class="why-choose-section">
			<div class="container">
				<div class="row justify-content-between">
					<div class="col-lg-6">
						<h2 class="section-title">¿Por qué elegirnos?</h2>
						<p style="text-align:justify">En nuestro criadero, nos dedicamos con pasión y compromiso a la cría de
							conejos y cuyes de la más alta calidad. Nos destacamos por nuestro 
							enfoque en el bienestar animal, brindando a cada uno de nuestros conejos
							y cuyes un entorno saludable y enriquecedor. Contamos con un equipo de
							expertos que supervisa cada etapa del proceso de cría, garantizando animale
							s fuertes, sanos y sociables. Además, ofrecemos asesoramiento continuo
							a nuestros clientes para asegurar que sus nuevas mascotas se integren
							perfectamente a su hogar. ¡Elige nuestro criadero y experimenta la
							diferencia que la dedicación y el cuidado pueden hacer!</p>

						<div class="row my-5">
							<div class="col-6 col-md-6">
								<div class="feature">
									<div class="icon">
										<img src="Content/images/truck.svg" alt="Image" class="imf-fluid">
									</div>
									<h3>Bienestar Animal Prioritario</h3>
									<p>Nos enfocamos en proporcionar un entorno saludable y enriquecedor para nuestros conejos
										y cuyes, asegurando su bienestar físico y emocional en todo momento.</p>
								</div>
							</div>

							<div class="col-6 col-md-6">
								<div class="feature">
									<div class="icon">
										<img src="Content/images/bag.svg" alt="Image" class="imf-fluid">
									</div>
									<h3>Equipo de Expertos</h3>
									<p>Contamos con un equipo de profesionales altamente capacitados que supervisan cada
										etapa del proceso de cría, garantizando que cada animal sea fuerte, sano y sociable.</p>
								</div>
							</div>

							<div class="col-6 col-md-6">
								<div class="feature">
									<div class="icon">
										<img src="Content/images/support.svg" alt="Image" class="imf-fluid">
									</div>
									<h3>Calidad Garantizada</h3>
									<p>Nos comprometemos a ofrecer conejos y cuyes de la más alta calidad, criados con
										los más estrictos estándares de cuidado y nutrición para asegurar su salud y longevidad.</p>
								</div>
							</div>

							<div class="col-6 col-md-6">
								<div class="feature">
									<div class="icon">
										<img src="Content/images/return.svg" alt="Image" class="imf-fluid">
									</div>
									<h3>Asesoramiento Continuo</h3>
									<p>Brindamos apoyo y asesoramiento a nuestros clientes antes, durante y después de
										la adopción, asegurando que las nuevas mascotas se integren perfectamente en
										su nuevo hogar y reciban el cuidado adecuado.</p>
								</div>
							</div>

						</div>
					</div>

					<div class="col-lg-5">
						<div class="img-wrap">
							<img src="images/conejo5.jpg" alt="Image" class="img-fluid">
						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- End Why Choose Us Section -->

		<!-- Start We Help Section -->
		<div class="we-help-section">
			<div class="container">
				<div class="row justify-content-between">
					<div class="col-lg-7 mb-5 mb-lg-0">
						<div class="imgs-grid">
							<div class="grid grid-1"><img src="images/conejo6.jpeg" alt="Untree.co"></div>
							<div class="grid grid-2"><img src="images/conejo7.jpeg" alt="Untree.co"></div>
							<div class="grid grid-3"><img src="images/conejo8.jpeg" alt="Untree.co"></div>
						</div>
					</div>
					<div class="col-lg-5 ps-lg-5">
						<h2 class="section-title mb-4">Nos dedicamos a la cría de conejos y cuyes de alta calidad</h2>
						<p>En nuestro criadero, estamos comprometidos con la cría de conejos y cuyes de la más alta calidad.
							Proporcionamos un entorno saludable y enriquecedor para asegurar el bienestar físico y emocional
							de cada uno de nuestros animales. Nuestro equipo de expertos supervisa cada etapa del proceso 
							de cría, garantizando animales fuertes, sanos y sociables.</p>

						<ul class="list-unstyled custom-list my-4">
							<li>Nuestro enfoque en el bienestar animal nos distingue.</li>
							<li>Nos dedicamos a ofrecer conejos y cuyes de calidad excepcional, criados con los más estrictos estándares de cuidado y nutrición.</li>
							<li>Brindamos apoyo continuo a nuestros clientes, asegurando una integración perfecta de las nuevas mascotas en sus hogares y ofreciendo asesoramiento para su cuidado adecuado.</li>

						</ul>
						<p><a herf="#" class="btn">Explorar</a></p>
					</div>
				</div>
			</div>
		</div>
		<!-- End We Help Section -->

		<!-- Start Popular Product -->
		<div class="popular-product">
			<div class="container">
				<div class="row">

					<div class="col-12 col-md-6 col-lg-4 mb-4 mb-lg-0">
						<div class="product-item-sm d-flex">
							<div class="thumbnail">
								<img src="images/conejo9.jpeg" alt="Image" class="img-fluid">
							</div>
							<div class="pt-3">
								<h3>HAVANA</h3>
								<p><a href="#">Leer Más</a></p>
							</div>
						</div>
					</div>

					<div class="col-12 col-md-6 col-lg-4 mb-4 mb-lg-0">
						<div class="product-item-sm d-flex">
							<div class="thumbnail">
								<img src="images/conejo10.jpeg" alt="Image" class="img-fluid">
							</div>
							<div class="pt-3">
								<h3>California</h3>
								<p><a href="#">Leer Más</a></p>
							</div>
						</div>
					</div>

					<div class="col-12 col-md-6 col-lg-4 mb-4 mb-lg-0">
						<div class="product-item-sm d-flex">
							<div class="thumbnail">
								<img src="images/conejo11.jpeg" alt="Image" class="img-fluid">
							</div>
							<div class="pt-3">
								<h3>Mariposa</h3>
								<p><a href="#">Leer Más</a></p>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- End Popular Product -->
</asp:Content>
