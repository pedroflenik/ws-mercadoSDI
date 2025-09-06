package wsMercado;

import javax.jws.WebMethod;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;
import javax.jws.soap.SOAPBinding.Style;

@WebService
@SOAPBinding(style = Style.RPC)
public interface MercadoServidor {
    
    @WebMethod
    int cadastrarPedido(String restaurante);

    @WebMethod
    boolean comprarProdutos(int restaurante, String[] produtos);

    @WebMethod
    int tempoEntrega(int restaurante);
}
