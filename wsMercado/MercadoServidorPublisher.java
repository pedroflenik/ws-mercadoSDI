package wsMercado;

import javax.xml.ws.Endpoint;

public class MercadoServidorPublisher {

	public static void main(String[] args) {

		System.out.println("Publicando serviço super mercado");
		Endpoint.publish("http://127.0.0.1:8900/WSHello", new MercadoServidorImpl());
		System.out.println("Servico pronto");
	}

}
