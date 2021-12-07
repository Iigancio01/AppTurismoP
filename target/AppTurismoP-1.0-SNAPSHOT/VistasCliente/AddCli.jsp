<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Cliente</title>
        <link href="Css/bootstrap/bootstrap.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/css/bootstrap-select.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/js/bootstrap-select.js"></script>


    </head>
    <body>
        
        <div class="container">
            <div class="col-lg-6">
            <h1>Agregar Cliente</h1>
            <form action="ControladorCliente"> Rut Cliente:<br>
                <input class="form-control" type="text" name="txtRutCliente"><br>
                Id Comuna:<br>
               <select data-live-search="true"  class="selectpicker" name="txtIdComuna">
                    <option value="1"> Arica</option>
                    <option value="2"> Camarones</option>
                    <option value="3"> General Lagos</option>
                    <option value="4"> Putre</option>
                    <option value="5"> Alto Hospicio</option>
                    <option value="6"> Iquique</option>
                    <option value="7"> Camiña</option>
                    <option value="8"> Colchane</option>
                    <option value="9"> Huara</option>
                    <option value="10"> Pica</option>
                    <option value="11"> Pozo Almonte</option>
                    <option value="12"> Antofagasta</option>
                    <option value="13"> Mejillones</option>
                    <option value="14"> Sierra Gorda</option>
                    <option value="15"> Taltal</option>
                    <option value="16"> Calama</option>
                    <option value="17"> Ollague</option>
                    <option value="18"> San Pedro de Atacama</option>
                    <option value="19"> María Elena</option>
                    <option value="20"> Tocopilla</option>
                    <option value="21"> Chañaral</option>
                    <option value="22"> Diego de Almagro</option>
                    <option value="23"> Caldera</option>
                    <option value="24"> Copiapó</option>
                    <option value="25"> Tierra Amarilla</option>
                    <option value="26"> Alto del Carmen</option>
                    <option value="27"> Freirina</option>
                    <option value="28"> Huasco</option>
                    <option value="29"> Vallenar</option>
                    <option value="30"> Canela</option>
                    <option value="31"> Illapel</option>
                    <option value="32"> Los Vilos</option>
                    <option value="33"> Salamanca</option>
                    <option value="34"> Andacollo</option>
                    <option value="35"> Coquimbo</option>
                    <option value="36"> La Higuera</option>
                    <option value="37"> La Serena</option>
                    <option value="38"> Paihuaco</option>
                    <option value="39"> Vicuña</option>
                    <option value="40"> Combarbalá</option>
                    <option value="41"> Monte Patria</option>
                    <option value="42"> Ovalle</option>
                    <option value="43"> Punitaqui</option>
                    <option value="44"> Río Hurtado</option>
                    <option value="45"> Isla de Pascua</option>
                    <option value="46"> Calle Larga</option>
                    <option value="47"> Los Andes</option>
                    <option value="48"> Rinconada</option>
                    <option value="49"> San Esteban</option>
                    <option value="50"> La Ligua</option>
                    <option value="51"> Papudo</option>
                    <option value="52"> Petorca</option>
                    <option value="53"> Zapallar</option>
                    <option value="54"> Hijuelas</option>
                    <option value="55"> La Calera</option>
                    <option value="56"> La Cruz</option>
                    <option value="57"> Limache</option>
                    <option value="58"> Nogales</option>
                    <option value="59"> Olmué</option>
                    <option value="60"> Quillota</option>
                    <option value="61"> Algarrobo</option>
                    <option value="62"> Cartagena</option>
                    <option value="63"> El Quisco</option>
                    <option value="64"> El Tabo</option>
                    <option value="65"> San Antonio</option>
                    <option value="66"> Santo Domingo</option>
                    <option value="67"> Catemu</option>
                    <option value="68"> Llaillay</option>
                    <option value="69"> Panquehue</option>
                    <option value="70"> Putaendo</option>
                    <option value="71"> San Felipe</option>
                    <option value="72"> Santa María</option>
                    <option value="73"> Casablanca</option>
                    <option value="74"> Concón</option>
                    <option value="75"> Juan Fernández</option>
                    <option value="76"> Puchuncaví</option>
                    <option value="77"> Quilpué</option>
                    <option value="78"> Quintero</option>
                    <option value="79"> Valparaíso</option>
                    <option value="80"> Villa Alemana</option>
                    <option value="81"> Viña del Mar</option>
                    <option value="82"> Colina</option>
                    <option value="83"> Lampa</option>
                    <option value="84"> Tiltil</option>
                    <option value="85"> Pirque</option>
                    <option value="86"> Puente Alto</option>
                    <option value="87"> San José de Maipo</option>
                    <option value="88"> Buin</option>
                    <option value="89"> Calera de Tango</option>
                    <option value="90"> Paine</option>
                    <option value="91"> San Bernardo</option>
                    <option value="92"> Alhué</option>
                    <option value="93"> Curacaví</option>
                    <option value="94"> María Pinto</option>
                    <option value="95"> Melipilla</option>
                    <option value="96"> San Pedro</option>
                    <option value="97"> Cerrillos</option>
                    <option value="98"> Cerro Navia</option>
                    <option value="99"> Conchalí</option>
                    <option value="100"> El Bosque</option>
                    <option value="101"> Estación Central</option>
                    <option value="102"> Huechuraba</option>
                    <option value="103"> Independencia</option>
                    <option value="104"> La Cisterna</option>
                    <option value="105"> La Granja</option>
                    <option value="106"> La Florida</option>
                    <option value="107"> La Pintana</option>
                    <option value="108"> La Reina</option>
                    <option value="109"> Las Condes</option>
                    <option value="110"> Lo Barnechea</option>
                    <option value="111"> Lo Espejo</option>
                    <option value="112"> Lo Prado</option>
                    <option value="113"> Macul</option>
                    <option value="114"> Maipú</option>
                    <option value="115"> Ñuñoa</option>
                    <option value="116"> Pedro Aguirre Cerda</option>
                    <option value="117"> Peñalolén</option>
                    <option value="118"> Providencia</option>
                    <option value="119"> Pudahuel</option>
                    <option value="120"> Quilicura</option>
                    <option value="121"> Quinta Normal</option>
                    <option value="122"> Recoleta</option>
                    <option value="123"> Renca</option>
                    <option value="124"> San Miguel</option>
                    <option value="125"> San Joaquín</option>
                    <option value="126"> San Ramón</option>
                    <option value="127"> Santiago</option>
                    <option value="128"> Vitacura</option>
                    <option value="129"> El Monte</option>
                    <option value="130"> Isla de Maipo</option>
                    <option value="131"> Padre Hurtado</option>
                    <option value="132"> Peñaflor</option>
                    <option value="133"> Talagante</option>
                    <option value="134"> Codegua</option>
                    <option value="135"> Coínco</option>
                    <option value="136"> Coltauco</option>
                    <option value="137"> Doñihue</option>
                    <option value="138"> Graneros</option>
                    <option value="139"> Las Cabras</option>
                    <option value="140"> Machalí</option>
                    <option value="141"> Malloa</option>
                    <option value="142"> Mostazal</option>
                    <option value="143"> Olivar</option>
                    <option value="144"> Peumo</option>
                    <option value="145"> Pichidegua</option>
                    <option value="146"> Quinta de Tilcoco</option>
                    <option value="147"> Rancagua</option>
                    <option value="148"> Rengo</option>
                    <option value="149"> Requínoa</option>
                    <option value="150"> San Vicente de Tagua Tagua</option>
                    <option value="151"> La Estrella</option>
                    <option value="152"> Litueche</option>
                    <option value="153"> Marchihue</option>
                    <option value="154"> Navidad</option>
                    <option value="155"> Peredones</option>
                    <option value="156"> Pichilemu</option>
                    <option value="157"> Chépica</option>
                    <option value="158"> Chimbarongo</option>
                    <option value="159"> Lolol</option>
                    <option value="160"> Nancagua</option>
                    <option value="161"> Palmilla</option>
                    <option value="162"> Peralillo</option>
                    <option value="163"> Placilla</option>
                    <option value="164"> Pumanque</option>
                    <option value="165"> San Fernando</option>
                    <option value="166"> Santa Cruz</option>
                    <option value="167"> Cauquenes</option>
                    <option value="168"> Chanco</option>
                    <option value="169"> Pelluhue</option>
                    <option value="170"> Curicó</option>
                    <option value="171"> Hualañé</option>
                    <option value="172"> Licantén</option>
                    <option value="173"> Molina</option>
                    <option value="174"> Rauco</option>
                    <option value="175"> Romeral</option>
                    <option value="176"> Sagrada Familia</option>
                    <option value="177"> Teno</option>
                    <option value="178"> Vichuquén</option>
                    <option value="179"> Colbún</option>
                    <option value="180"> Linares</option>
                    <option value="181"> Longaví</option>
                    <option value="182"> Parral</option>
                    <option value="183"> Retiro</option>
                    <option value="184"> San Javier</option>
                    <option value="185"> Villa Alegre</option>
                    <option value="186"> Yerbas Buenas</option>
                    <option value="187"> Constitución</option>
                    <option value="188"> Curepto</option>
                    <option value="189"> Empedrado</option>
                    <option value="190"> Maule</option>
                    <option value="191"> Pelarco</option>
                    <option value="192"> Pencahue</option>
                    <option value="193"> Río Claro</option>
                    <option value="194"> San Clemente</option>
                    <option value="195"> San Rafael</option>
                    <option value="196"> Talca</option>
                    <option value="197"> Arauco</option>
                    <option value="198"> Cañete</option>
                    <option value="199"> Contulmo</option>
                    <option value="200"> Curanilahue</option>
                    <option value="201"> Lebu</option>
                    <option value="202"> Los Álamos</option>
                    <option value="203"> Tirúa</option>
                    <option value="204"> Alto Biobío</option>
                    <option value="205"> Antuco</option>
                    <option value="206"> Cabrero</option>
                    <option value="207"> Laja</option>
                    <option value="208"> Los Ángeles</option>
                    <option value="209"> Mulchén</option>
                    <option value="210"> Nacimiento</option>
                    <option value="211"> Negrete</option>
                    <option value="212"> Quilaco</option>
                    <option value="213"> Quilleco</option>
                    <option value="214"> San Rosendo</option>
                    <option value="215"> Santa Bárbara</option>
                    <option value="216"> Tucapel</option>
                    <option value="217"> Yumbel</option>
                    <option value="218"> Chiguayante</option>
                    <option value="219"> Concepción</option>
                    <option value="220"> Coronel</option>
                    <option value="221"> Florida</option>
                    <option value="222"> Hualpén</option>
                    <option value="223"> Hualqui</option>
                    <option value="224"> Lota</option>
                    <option value="225"> Penco</option>
                    <option value="226"> San Pedro de La Paz</option>
                    <option value="227"> Santa Juan</option>
                    <option value="228"> Talcahuano</option>
                    <option value="229"> Tomé</option>
                    <option value="230"> Bulnes</option>
                    <option value="231"> Chillán</option>
                    <option value="232"> Chillán Viejo</option>
                    <option value="233"> Cobquecura</option>
                    <option value="234"> Coelemu</option>
                    <option value="235"> Coihueco</option>
                    <option value="236"> El Carmen</option>
                    <option value="237"> Ninhue</option>
                    <option value="238"> Ñiquen</option>
                    <option value="239"> Pemuco</option>
                    <option value="240"> Pinto</option>
                    <option value="241"> Portezuelo</option>
                    <option value="242"> Quillón</option>
                    <option value="243"> Quirihue</option>
                    <option value="244"> Ránquil</option>
                    <option value="245"> San Carlos</option>
                    <option value="246"> San Fabián</option>
                    <option value="247"> San Ignacio</option>
                    <option value="248"> San Nicolás</option>
                    <option value="249"> Treguaco</option>
                    <option value="250"> Yungay</option>
                    <option value="251"> Carahue</option>
                    <option value="252"> Cholchol</option>
                    <option value="253"> Cunco</option>
                    <option value="254"> Curarrehue</option>
                    <option value="255"> Freire</option>
                    <option value="256"> Galvarino</option>
                    <option value="257"> Gorbea</option>
                    <option value="258"> Lautaro</option>
                    <option value="259"> Loncoche</option>
                    <option value="260"> Melipeuco</option>
                    <option value="261"> Nueva Imperial</option>
                    <option value="262"> Padre Las Casas</option>
                    <option value="263"> Perquenco</option>
                    <option value="264"> Pitrufquén</option>
                    <option value="265"> Pucón</option>
                    <option value="266"> Saavedra</option>
                    <option value="267"> Temuco</option>
                    <option value="268"> Teodoro Schmidt</option>
                    <option value="269"> Toltén</option>
                    <option value="270"> Vilcún</option>
                    <option value="271"> Villarrica</option>
                    <option value="272"> Angol</option>
                    <option value="273"> Collipulli</option>
                    <option value="274"> Curacautín</option>
                    <option value="275"> Ercilla</option>
                    <option value="276"> Lonquimay</option>
                    <option value="277"> Los Sauces</option>
                    <option value="278"> Lumaco</option>
                    <option value="279"> Purén</option>
                    <option value="280"> Renaico</option>
                    <option value="281"> Traiguén</option>
                    <option value="282"> Victoria</option>
                    <option value="283"> Corral</option>
                    <option value="284"> Lanco</option>
                    <option value="285"> Los Lagos</option>
                    <option value="286"> Máfil</option>
                    <option value="287"> Mariquina</option>
                    <option value="288"> Paillaco</option>
                    <option value="289"> Panguipulli</option>
                    <option value="290"> Valdivia</option>
                    <option value="291"> Futrono</option>
                    <option value="292"> La Unión</option>
                    <option value="293"> Lago Ranco</option>
                    <option value="294"> Río Bueno</option>
                    <option value="295"> Ancud</option>
                    <option value="296"> Castro</option>
                    <option value="297"> Chonchi</option>
                    <option value="298"> Curaco de Vélez</option>
                    <option value="299"> Dalcahue</option>
                    <option value="300"> Puqueldón</option>
                    <option value="301"> Queilén</option>
                    <option value="302"> Quemchi</option>
                    <option value="303"> Quellón</option>
                    <option value="304"> Quinchao</option>
                    <option value="305"> Calbuco</option>
                    <option value="306"> Cochamó</option>
                    <option value="307"> Fresia</option>
                    <option value="308"> Frutillar</option>
                    <option value="309"> Llanquihue</option>
                    <option value="310"> Los Muermos</option>
                    <option value="311"> Maullín</option>
                    <option value="312"> Puerto Montt</option>
                    <option value="313"> Puerto Varas</option>
                    <option value="314"> Osorno</option>
                    <option value="315"> Puero Octay</option>
                    <option value="316"> Purranque</option>
                    <option value="317"> Puyehue</option>
                    <option value="318"> Río Negro</option>
                    <option value="319"> San Juan de la Costa</option>
                    <option value="320"> San Pablo</option>
                    <option value="321"> Chaitén</option>
                    <option value="322"> Futaleufú</option>
                    <option value="323"> Hualaihué</option>
                    <option value="324"> Palena</option>
                    <option value="325"> Aisén</option>
                    <option value="326"> Cisnes</option>
                    <option value="327"> Guaitecas</option>
                    <option value="328"> Cochrane</option>
                    <option value="329"> Ohiggins</option>
                    <option value="330"> Tortel</option>
                    <option value="331"> Coihaique</option>
                    <option value="332"> Lago Verde</option>
                    <option value="333"> Chile Chico</option>
                    <option value="334"> Río Ibáñez</option>
                    <option value="335"> Antártica</option>
                    <option value="336"> Cabo de Hornos</option>
                    <option value="337"> Laguna Blanca</option>
                    <option value="338"> Punta Arenas</option>
                    <option value="339"> Río Verde</option>
                    <option value="340"> San Gregorio</option>
                    <option value="341"> Porvenir</option>
                    <option value="342"> Primavera</option>
                    <option value="343"> Timaukel</option>
                    <option value="344"> Natales</option>
                    <option value="345"> Torres del Paine</option>
                    </select><br>
                 Nombre:<br>
                <input class="form-control" type="text" name="txtNombreCli"><br>
                   Apellido Paterno:<br>
                <input class="form-control" type="text" name="txtApellidoPC"><br>
                Apellido Materno:<br>
                <input class="form-control" type="text" name="txtApellidoMC"><br>
                Correo:<br>
                <input class="form-control" type="text" name="txtCorreo"><br>
                Contraseña:<br>
                <input class="form-control" type="text" name="txtContrasena"><br>
                Tipo Usuario:<br>
               <!-- <select data-live-search="true" data-live-search-style="startsWith" class="selectpicker" name="txtTipoUsuario">-->
               <select  class="form-control" name="txtTipoUsuario">
                        <option value=''>Seleccione...</option>
                        <option value='1'>Administrador</option>
                        <option value='2'>Cliente</option>
                   
                                     
                  </select><br>
                <button  class="btn btn-primary" type="submit" name="accion" value="AgregarCliente" >Agregar Cliente</button><br>
            </form>
            </div>
        </div>
    </body>
</html>