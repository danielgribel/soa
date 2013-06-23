/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.uniriotec.soa;

import java.util.List;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author afonso
 */
@WebService(serviceName = "ClienteService")
public class ClienteService {

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "getClienteCPF")
    public List<String> getClienteCPF(@WebParam(name = "name") String txt) {
        DasbuchDAO dao = new DasbuchDAO();
        List<String> cpf = dao.consultarCPF("afonso");
        return cpf;
    }
}
