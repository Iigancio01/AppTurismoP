/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import com.khipu.ApiClient;
import com.khipu.ApiException;
import com.khipu.api.client.PaymentsApi;
import com.khipu.api.model.PaymentsCreateResponse;
import java.util.HashMap;
import java.util.Map;
import com.khipu.ApiClient;
import com.khipu.api.client.PaymentsApi;
import com.khipu.api.model.PaymentsCreateResponse;
import java.util.HashMap;
import java.util.Map;
import com.khipu.ApiException;

/**
 *
 * @author fgonz
 */
public class PagoKiphuT {
    /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */




/**
 *
 * @author avata
 */
   
    UrlKhipu url = new UrlKhipu();
    Arriendo arrie = new Arriendo();
    
    String pure; 
    
    String prueba;

    public  PaymentsCreateResponse Pagar(String NombreT, int monto) throws ApiException{
       
            int receiverId = 405842;
            String secretKey ="2c06ba672675be06d446635096be12d08873c3e6";
            //monto=arrie.getMonto();
            System.out.println("pago: "+monto);
            Double montoD = Double.valueOf(monto);
            
            System.out.println("pago: "+montoD);

            ApiClient apiClient = new ApiClient();
            apiClient.setKhipuCredentials(receiverId, secretKey);
            apiClient.setPlatform("demo-client", "2.0");
            // apiClient.setDebugging(true);
            PaymentsApi paymentsApi = new PaymentsApi();
            paymentsApi.setApiClient(apiClient);

            Map<String, Object> options = new HashMap<>();
            options.put("transactionId", "MTI-100");
            options.put("returnUrl", "http://localhost:8080/AppTurismoP/ControladorVistaCliente?accion=PagoExitoso");
            options.put("cancelUrl", "http://localhost:8080/AppTurismoP/ControladorVistaCliente?accion=PagoCancelado");
            options.put("pictureUrl", "");
            options.put("notifyUrl", "http://mi-ecomerce.com/backend/notify");
            options.put("notifyApiVersion", "1.3");

            PaymentsCreateResponse responses;

                responses = paymentsApi.paymentsPost(NombreT //Motivo de la compra
                        , "CLP" //Monedas disponibles CLP, USD, ARS, BOB
                        , montoD //Monto
                        , options //campos opcionales
                );

                System.out.println(responses);
                
                pure=responses.getPaymentUrl();
                System.out.println("Variable: "+pure);
                
                url.setUrlPago(pure);
                
                prueba=url.getUrlPago();
                 
                System.out.println("prueba get"+prueba);
       
               return responses;
    }

   
        
                                
}


